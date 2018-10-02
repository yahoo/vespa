// Copyright 2018 Yahoo Holdings. Licensed under the terms of the Apache 2.0 license. See LICENSE in the project root.
package ai.vespa.models.evaluation;

import com.yahoo.searchlib.rankingexpression.ExpressionFunction;
import com.yahoo.tensor.Tensor;
import com.yahoo.tensor.TensorType;
import org.junit.Test;

import java.util.List;
import java.util.stream.Collectors;

import static org.junit.Assert.assertEquals;

/**
 * Tests instantiating models from rank-profiles configs.
 *
 * @author bratseth
 */
public class MlModelsImportingTest {

    private static final double delta = 0.00000000001;

    @Test
    public void testImportingModels() {
        ModelTester tester = new ModelTester("src/test/resources/config/models/");

        assertEquals(4, tester.models().size());

        // TODO: When we get type information in Models, replace the evaluator.context().names() check below by that
        {
            Model xgboost = tester.models().get("xgboost_2_2");

            // Function
            assertEquals(1, xgboost.functions().size());
            tester.assertFunction("xgboost_2_2",
                                  "(optimized sum of condition trees of size 192 bytes)",
                                  xgboost);
            ExpressionFunction function = xgboost.functions().get(0);
            assertEquals(TensorType.fromSpec("tensor()"), function.returnType().get());
            assertEquals("f109, f29, f56, f60", commaSeparated(function.arguments()));
            function.arguments().forEach(arg -> assertEquals(TensorType.empty, function.argumentTypes().get(arg)));

            // Evaluator
            FunctionEvaluator evaluator = xgboost.evaluatorOf();
            assertEquals("f109, f29, f56, f60", evaluator.context().names().stream().sorted().collect(Collectors.joining(", ")));
            assertEquals(-8.17695, evaluator.evaluate().sum().asDouble(), delta);
        }

        {

            Model onnxMnistSoftmax = tester.models().get("mnist_softmax");

            // Function
            assertEquals(1, onnxMnistSoftmax.functions().size());
            tester.assertFunction("default.add",
                                  "join(reduce(join(rename(Placeholder, (d0, d1), (d0, d2)), constant(mnist_softmax_Variable), f(a,b)(a * b)), sum, d2), constant(mnist_softmax_Variable_1), f(a,b)(a + b))",
                                  onnxMnistSoftmax);
            ExpressionFunction function = onnxMnistSoftmax.functions().get(0);
            assertEquals(TensorType.fromSpec("tensor(d1[10])"), function.returnType().get());
            assertEquals(1, function.arguments().size());
            assertEquals("Placeholder", function.arguments().get(0));
            assertEquals(TensorType.fromSpec("tensor(d0[],d1[784])"), function.argumentTypes().get("Placeholder"));

            // Evaluator
            assertEquals("tensor(d1[10],d2[784])",
                         onnxMnistSoftmax.evaluatorOf("default.add").context().get("constant(mnist_softmax_Variable)").type().toString());
            FunctionEvaluator evaluator = onnxMnistSoftmax.evaluatorOf(); // Verify exactly one output available
            evaluator.bind("Placeholder", inputTensor());
            assertEquals(-1.6372650861740112E-6, evaluator.evaluate().sum().asDouble(), delta);
        }

        {
            Model tfMnistSoftmax = tester.models().get("mnist_softmax_saved");

            // Function
            assertEquals(1, tfMnistSoftmax.functions().size());
            tester.assertFunction("serving_default.y",
                                  "join(reduce(join(rename(Placeholder, (d0, d1), (d0, d2)), constant(mnist_softmax_saved_layer_Variable_read), f(a,b)(a * b)), sum, d2), constant(mnist_softmax_saved_layer_Variable_1_read), f(a,b)(a + b))",
                                  tfMnistSoftmax);
            ExpressionFunction function = tfMnistSoftmax.functions().get(0);
            assertEquals(TensorType.fromSpec("tensor(d1[10])"), function.returnType().get());
            assertEquals(1, function.arguments().size());
            assertEquals("Placeholder", function.arguments().get(0));
            assertEquals(TensorType.fromSpec("tensor(d0[],d1[784])"), function.argumentTypes().get("Placeholder"));

            // Evaluator
            FunctionEvaluator evaluator = tfMnistSoftmax.evaluatorOf(); // Verify exactly one output available
            evaluator.bind("Placeholder", inputTensor());
            assertEquals(-1.6372650861740112E-6, evaluator.evaluate().sum().asDouble(), delta);
        }

        {
            Model tfMnist = tester.models().get("mnist_saved");
            // Generated function
            tester.assertFunction("imported_ml_function_mnist_saved_dnn_hidden1_add",
                                  "join(reduce(join(rename(input, (d0, d1), (d0, d4)), constant(mnist_saved_dnn_hidden1_weights_read), f(a,b)(a * b)), sum, d4), constant(mnist_saved_dnn_hidden1_bias_read), f(a,b)(a + b))",
                                  tfMnist);

            // Function
            assertEquals(1, tfMnist.functions().size());
            tester.assertFunction("serving_default.y",
                                  "join(reduce(join(map(join(reduce(join(join(join(rankingExpression(imported_ml_function_mnist_saved_dnn_hidden1_add), 0.009999999776482582, f(a,b)(a * b)), rankingExpression(imported_ml_function_mnist_saved_dnn_hidden1_add), f(a,b)(max(a,b))), constant(mnist_saved_dnn_hidden2_weights_read), f(a,b)(a * b)), sum, d3), constant(mnist_saved_dnn_hidden2_bias_read), f(a,b)(a + b)), f(a)(1.050701 * if (a >= 0, a, 1.673263 * (exp(a) - 1)))), constant(mnist_saved_dnn_outputs_weights_read), f(a,b)(a * b)), sum, d2), constant(mnist_saved_dnn_outputs_bias_read), f(a,b)(a + b))",
                                  tfMnist);
            ExpressionFunction function = tfMnist.functions().get(0);
            assertEquals(TensorType.fromSpec("tensor(d1[10])"), function.returnType().get());
            assertEquals(1, function.arguments().size());
            assertEquals("input", function.arguments().get(0));
            assertEquals(TensorType.fromSpec("tensor(d0[],d1[784])"), function.argumentTypes().get("input"));

            // Evaluator
            FunctionEvaluator evaluator = tfMnist.evaluatorOf("serving_default");
            evaluator.bind("input", inputTensor());
            assertEquals(-0.714629131972222, evaluator.evaluate().sum().asDouble(), delta);
        }
    }

    private Tensor inputTensor() {
        Tensor.Builder b = Tensor.Builder.of(TensorType.fromSpec("tensor(d0[],d1[784])"));
        for (int i = 0; i < 784; i++)
            b.cell(0.0, 0, i);
        return b.build();
    }

    private String commaSeparated(List<?> items) {
        return items.stream().map(item -> item.toString()).sorted().collect(Collectors.joining(", "));
    }

}
