„ґ

э'–'
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	АР
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
E
AssignAddVariableOp
resource
value"dtype"
dtypetypeИ
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
є
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
.
Log1p
x"T
y"T"
Ttype:

2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	Р
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
;
Minimum
x"T
y"T
z"T"
Ttype:

2	Р
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshapeИ
9
VarIsInitializedOp
resource
is_initialized
И
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.12.02v1.12.0-rc2-3-ga6d8ffae09ћЎ
j
input_1Placeholder*
dtype0*'
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
j
input_2Placeholder*
dtype0*'
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
Y
concatenate/concat/axisConst*
_output_shapes
: *
value	B :*
dtype0
Р
concatenate/concatConcatV2input_1input_2concatenate/concat/axis*

Tidx0*
T0*
N*'
_output_shapes
:€€€€€€€€€
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@dense/kernel*
valueB"   @   *
dtype0*
_output_shapes
:
С
+dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@dense/kernel*
valueB
 *феХЊ*
dtype0*
_output_shapes
: 
С
+dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
_class
loc:@dense/kernel*
valueB
 *феХ>
е
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@*

seed *
T0*
_class
loc:@dense/kernel*
seed2 
ќ
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
а
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*
_output_shapes

:@
“
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
_output_shapes

:@*
T0*
_class
loc:@dense/kernel
¶
dense/kernelVarHandleOp*
_class
loc:@dense/kernel*
	container *
shape
:@*
dtype0*
_output_shapes
: *
shared_namedense/kernel
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 
М
dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
_class
loc:@dense/kernel*
dtype0
О
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_class
loc:@dense/kernel*
dtype0*
_output_shapes

:@
И
dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
_class
loc:@dense/bias*
valueB@*    
Ь

dense/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_name
dense/bias*
_class
loc:@dense/bias*
	container *
shape:@
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
{
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
_class
loc:@dense/bias*
dtype0
Д
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:@*
_class
loc:@dense/bias*
dtype0
h
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes

:@
Я
dense/MatMulMatMulconcatenate/concatdense/MatMul/ReadVariableOp*'
_output_shapes
:€€€€€€€€€@*
transpose_a( *
transpose_b( *
T0
c
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:@
Н
dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€@
S

dense/ReluReludense/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€@
£
/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
valueB"@   @   *
dtype0*
_output_shapes
:
Х
-dense_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *!
_class
loc:@dense_1/kernel*
valueB
 *„≥]Њ*
dtype0
Х
-dense_1/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_1/kernel*
valueB
 *„≥]>*
dtype0*
_output_shapes
: 
л
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@@*

seed *
T0*!
_class
loc:@dense_1/kernel*
seed2 
÷
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
и
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:@@
Џ
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
_output_shapes

:@@*
T0
ђ
dense_1/kernelVarHandleOp*
shared_namedense_1/kernel*!
_class
loc:@dense_1/kernel*
	container *
shape
:@@*
dtype0*
_output_shapes
: 
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 
Ф
dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*!
_class
loc:@dense_1/kernel*
dtype0
Ф
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:@@*!
_class
loc:@dense_1/kernel
М
dense_1/bias/Initializer/zerosConst*
_class
loc:@dense_1/bias*
valueB@*    *
dtype0*
_output_shapes
:@
Ґ
dense_1/biasVarHandleOp*
shared_namedense_1/bias*
_class
loc:@dense_1/bias*
	container *
shape:@*
dtype0*
_output_shapes
: 
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 
Г
dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
_class
loc:@dense_1/bias*
dtype0
К
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:@
l
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:@@
Ы
dense_1/MatMulMatMul
dense/Reludense_1/MatMul/ReadVariableOp*'
_output_shapes
:€€€€€€€€€@*
transpose_a( *
transpose_b( *
T0
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:@
У
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€@*
T0
W
dense_1/ReluReludense_1/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€@
£
/dense_2/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_2/kernel*
valueB"@      *
dtype0*
_output_shapes
:
Х
-dense_2/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *!
_class
loc:@dense_2/kernel*
valueB
 *ИОЫЊ
Х
-dense_2/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *!
_class
loc:@dense_2/kernel*
valueB
 *ИОЫ>*
dtype0
л
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*!
_class
loc:@dense_2/kernel*
seed2 *
dtype0*
_output_shapes

:@*

seed *
T0
÷
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
и
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

:@
Џ
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

:@
ђ
dense_2/kernelVarHandleOp*
shape
:@*
dtype0*
_output_shapes
: *
shared_namedense_2/kernel*!
_class
loc:@dense_2/kernel*
	container 
m
/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/kernel*
_output_shapes
: 
Ф
dense_2/kernel/AssignAssignVariableOpdense_2/kernel)dense_2/kernel/Initializer/random_uniform*!
_class
loc:@dense_2/kernel*
dtype0
Ф
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes

:@
М
dense_2/bias/Initializer/zerosConst*
_class
loc:@dense_2/bias*
valueB*    *
dtype0*
_output_shapes
:
Ґ
dense_2/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_2/bias*
_class
loc:@dense_2/bias*
	container *
shape:
i
-dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/bias*
_output_shapes
: 
Г
dense_2/bias/AssignAssignVariableOpdense_2/biasdense_2/bias/Initializer/zeros*
_class
loc:@dense_2/bias*
dtype0
К
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:
l
dense_2/MatMul/ReadVariableOpReadVariableOpdense_2/kernel*
dtype0*
_output_shapes

:@
Э
dense_2/MatMulMatMuldense_1/Reludense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b( 
g
dense_2/BiasAdd/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:
У
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€
П
)Adam/iterations/Initializer/initial_valueConst*"
_class
loc:@Adam/iterations*
value	B	 R *
dtype0	*
_output_shapes
: 
І
Adam/iterationsVarHandleOp*
	container *
shape: *
dtype0	*
_output_shapes
: * 
shared_nameAdam/iterations*"
_class
loc:@Adam/iterations
o
0Adam/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/iterations*
_output_shapes
: 
Ч
Adam/iterations/AssignAssignVariableOpAdam/iterations)Adam/iterations/Initializer/initial_value*"
_class
loc:@Adam/iterations*
dtype0	
П
#Adam/iterations/Read/ReadVariableOpReadVariableOpAdam/iterations*"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 
В
!Adam/lr/Initializer/initial_valueConst*
_class
loc:@Adam/lr*
valueB
 *oГ:*
dtype0*
_output_shapes
: 
П
Adam/lrVarHandleOp*
dtype0*
_output_shapes
: *
shared_name	Adam/lr*
_class
loc:@Adam/lr*
	container *
shape: 
_
(Adam/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/lr*
_output_shapes
: 
w
Adam/lr/AssignAssignVariableOpAdam/lr!Adam/lr/Initializer/initial_value*
_class
loc:@Adam/lr*
dtype0
w
Adam/lr/Read/ReadVariableOpReadVariableOpAdam/lr*
_class
loc:@Adam/lr*
dtype0*
_output_shapes
: 
К
%Adam/beta_1/Initializer/initial_valueConst*
_class
loc:@Adam/beta_1*
valueB
 *fff?*
dtype0*
_output_shapes
: 
Ы
Adam/beta_1VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam/beta_1*
_class
loc:@Adam/beta_1*
	container *
shape: 
g
,Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_1*
_output_shapes
: 
З
Adam/beta_1/AssignAssignVariableOpAdam/beta_1%Adam/beta_1/Initializer/initial_value*
_class
loc:@Adam/beta_1*
dtype0
Г
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 
К
%Adam/beta_2/Initializer/initial_valueConst*
_class
loc:@Adam/beta_2*
valueB
 *wЊ?*
dtype0*
_output_shapes
: 
Ы
Adam/beta_2VarHandleOp*
shared_nameAdam/beta_2*
_class
loc:@Adam/beta_2*
	container *
shape: *
dtype0*
_output_shapes
: 
g
,Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_2*
_output_shapes
: 
З
Adam/beta_2/AssignAssignVariableOpAdam/beta_2%Adam/beta_2/Initializer/initial_value*
dtype0*
_class
loc:@Adam/beta_2
Г
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 
И
$Adam/decay/Initializer/initial_valueConst*
_class
loc:@Adam/decay*
valueB
 *    *
dtype0*
_output_shapes
: 
Ш

Adam/decayVarHandleOp*
_class
loc:@Adam/decay*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name
Adam/decay
e
+Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Adam/decay*
_output_shapes
: 
Г
Adam/decay/AssignAssignVariableOp
Adam/decay$Adam/decay/Initializer/initial_value*
dtype0*
_class
loc:@Adam/decay
А
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 
Г
dense_2_targetPlaceholder*%
shape:€€€€€€€€€€€€€€€€€€*
dtype0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
R
ConstConst*
_output_shapes
:*
valueB*  А?*
dtype0
Г
dense_2_sample_weightsPlaceholderWithDefaultConst*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
\
loss/dense_2_loss/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *Хњ÷3
\
loss/dense_2_loss/sub/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
o
loss/dense_2_loss/subSubloss/dense_2_loss/sub/xloss/dense_2_loss/Const*
_output_shapes
: *
T0
М
'loss/dense_2_loss/clip_by_value/MinimumMinimumdense_2/BiasAddloss/dense_2_loss/sub*'
_output_shapes
:€€€€€€€€€*
T0
Ю
loss/dense_2_loss/clip_by_valueMaximum'loss/dense_2_loss/clip_by_value/Minimumloss/dense_2_loss/Const*
T0*'
_output_shapes
:€€€€€€€€€
^
loss/dense_2_loss/sub_1/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
М
loss/dense_2_loss/sub_1Subloss/dense_2_loss/sub_1/xloss/dense_2_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€*
T0
Р
loss/dense_2_loss/truedivRealDivloss/dense_2_loss/clip_by_valueloss/dense_2_loss/sub_1*
T0*'
_output_shapes
:€€€€€€€€€
i
loss/dense_2_loss/LogLogloss/dense_2_loss/truediv*'
_output_shapes
:€€€€€€€€€*
T0
А
*loss/dense_2_loss/logistic_loss/zeros_like	ZerosLikeloss/dense_2_loss/Log*'
_output_shapes
:€€€€€€€€€*
T0
±
,loss/dense_2_loss/logistic_loss/GreaterEqualGreaterEqualloss/dense_2_loss/Log*loss/dense_2_loss/logistic_loss/zeros_like*'
_output_shapes
:€€€€€€€€€*
T0
”
&loss/dense_2_loss/logistic_loss/SelectSelect,loss/dense_2_loss/logistic_loss/GreaterEqualloss/dense_2_loss/Log*loss/dense_2_loss/logistic_loss/zeros_like*
T0*'
_output_shapes
:€€€€€€€€€
s
#loss/dense_2_loss/logistic_loss/NegNegloss/dense_2_loss/Log*
T0*'
_output_shapes
:€€€€€€€€€
ќ
(loss/dense_2_loss/logistic_loss/Select_1Select,loss/dense_2_loss/logistic_loss/GreaterEqual#loss/dense_2_loss/logistic_loss/Negloss/dense_2_loss/Log*
T0*'
_output_shapes
:€€€€€€€€€
М
#loss/dense_2_loss/logistic_loss/mulMulloss/dense_2_loss/Logdense_2_target*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
≤
#loss/dense_2_loss/logistic_loss/subSub&loss/dense_2_loss/logistic_loss/Select#loss/dense_2_loss/logistic_loss/mul*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Ж
#loss/dense_2_loss/logistic_loss/ExpExp(loss/dense_2_loss/logistic_loss/Select_1*
T0*'
_output_shapes
:€€€€€€€€€
Е
%loss/dense_2_loss/logistic_loss/Log1pLog1p#loss/dense_2_loss/logistic_loss/Exp*
T0*'
_output_shapes
:€€€€€€€€€
≠
loss/dense_2_loss/logistic_lossAdd#loss/dense_2_loss/logistic_loss/sub%loss/dense_2_loss/logistic_loss/Log1p*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
s
(loss/dense_2_loss/Mean/reduction_indicesConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
і
loss/dense_2_loss/MeanMeanloss/dense_2_loss/logistic_loss(loss/dense_2_loss/Mean/reduction_indices*
T0*#
_output_shapes
:€€€€€€€€€*
	keep_dims( *

Tidx0
Ь
Floss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shapeShapedense_2_sample_weights*
T0*
out_type0*
_output_shapes
:
З
Eloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 
Ы
Eloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shapeShapeloss/dense_2_loss/Mean*
T0*
out_type0*
_output_shapes
:
Ж
Dloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
Ж
Dloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 
щ
Bloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalarEqualDloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar/xEloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
Г
Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitchBloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalarBloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : *
T0

ѕ
Ploss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentityPloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
Ќ
Ploss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentityNloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
ј
Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentityBloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 
й
Ploss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1SwitchBloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalarOloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0
*U
_classK
IGloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 
И
nloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualuloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchwloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
_output_shapes
: *
T0
Т
uloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchDloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/rankOloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*W
_classM
KIloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/values/rank*
_output_shapes
: : *
T0
Ц
wloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchEloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/rankOloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*X
_classN
LJloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: : 
х
hloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchnloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_ranknloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 
Г
jloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentityjloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
_output_shapes
: *
T0

Б
jloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityhloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 
Ж
iloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentitynloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: *
T0

Ї
Бloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstk^loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
ѕ
}loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsИloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1Бloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
ђ
Дloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchEloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shapeOloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*X
_classN
LJloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
И
Жloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1SwitchДloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchiloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*X
_classN
LJloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
Ѕ
Вloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstk^loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
≤
Вloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstk^loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
…
|loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillВloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeВloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
_output_shapes

:*
T0*

index_type0
≠
~loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstk^loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
ј
yloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2}loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims|loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like~loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
T0*
N*
_output_shapes

:*

Tidx0
Љ
Гloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstk^loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
’
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsКloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1Гloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
_output_shapes

:*

Tdim0*
T0
∞
Жloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchFloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shapeOloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*Y
_classO
MKloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
Н
Иloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1SwitchЖloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchiloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*Y
_classO
MKloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
Ы
Лloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1yloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
set_operationa-b*
validate_indices(*
T0
Ќ
Гloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizeНloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
_output_shapes
: *
T0*
out_type0
£
tloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstk^loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 
Ш
rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualtloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xГloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 
ц
jloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchnloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankiloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*Б
_classw
usloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : 
ь
gloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergejloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
T0
*
N*
_output_shapes
: : 
њ
Mloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMergegloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeRloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
¶
>loss/dense_2_loss/broadcast_weights/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
П
@loss/dense_2_loss/broadcast_weights/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
Щ
@loss/dense_2_loss/broadcast_weights/assert_broadcastable/Const_2Const*)
value B Bdense_2_sample_weights:0*
dtype0*
_output_shapes
: 
О
@loss/dense_2_loss/broadcast_weights/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
Щ
@loss/dense_2_loss/broadcast_weights/assert_broadcastable/Const_4Const*)
value B Bloss/dense_2_loss/Mean:0*
dtype0*
_output_shapes
: 
Л
@loss/dense_2_loss/broadcast_weights/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
Ц
Kloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchMloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
…
Mloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentityMloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
«
Mloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentityKloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
»
Lloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentityMloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
°
Iloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOpN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t
Б
Wloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentityMloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tJ^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*
T0
*`
_classV
TRloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 
К
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0ConstN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
с
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1ConstN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
ы
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2ConstN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*)
value B Bdense_2_sample_weights:0*
dtype0*
_output_shapes
: 
р
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4ConstN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
ы
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5ConstN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*)
value B Bloss/dense_2_loss/Mean:0*
dtype0*
_output_shapes
: 
н
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7ConstN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
»
Kloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertRloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchRloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize
ю
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchMloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeLloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*`
_classV
TRloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 
ъ
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchFloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shapeLloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*Y
_classO
MKloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
ш
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchEloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shapeLloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*X
_classN
LJloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
к
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchBloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalarLloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
_output_shapes
: : *
T0
*U
_classK
IGloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar
Е
Yloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1IdentityMloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fL^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert*
T0
*`
_classV
TRloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
≥
Jloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/MergeMergeYloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Wloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
÷
3loss/dense_2_loss/broadcast_weights/ones_like/ShapeShapeloss/dense_2_loss/MeanK^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
_output_shapes
:*
T0*
out_type0
≈
3loss/dense_2_loss/broadcast_weights/ones_like/ConstConstK^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
valueB
 *  А?*
dtype0*
_output_shapes
: 
я
-loss/dense_2_loss/broadcast_weights/ones_likeFill3loss/dense_2_loss/broadcast_weights/ones_like/Shape3loss/dense_2_loss/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:€€€€€€€€€
Я
#loss/dense_2_loss/broadcast_weightsMuldense_2_sample_weights-loss/dense_2_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:€€€€€€€€€
З
loss/dense_2_loss/MulMulloss/dense_2_loss/Mean#loss/dense_2_loss/broadcast_weights*
T0*#
_output_shapes
:€€€€€€€€€
c
loss/dense_2_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
М
loss/dense_2_loss/SumSumloss/dense_2_loss/Mulloss/dense_2_loss/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
c
loss/dense_2_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
Ь
loss/dense_2_loss/Sum_1Sum#loss/dense_2_loss/broadcast_weightsloss/dense_2_loss/Const_2*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
w
loss/dense_2_loss/truediv_1RealDivloss/dense_2_loss/Sumloss/dense_2_loss/Sum_1*
_output_shapes
: *
T0
a
loss/dense_2_loss/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
|
loss/dense_2_loss/GreaterGreaterloss/dense_2_loss/Sum_1loss/dense_2_loss/zeros_like*
_output_shapes
: *
T0
Щ
loss/dense_2_loss/SelectSelectloss/dense_2_loss/Greaterloss/dense_2_loss/truediv_1loss/dense_2_loss/zeros_like*
T0*
_output_shapes
: 
\
loss/dense_2_loss/Const_3Const*
dtype0*
_output_shapes
: *
valueB 
У
loss/dense_2_loss/Mean_1Meanloss/dense_2_loss/Selectloss/dense_2_loss/Const_3*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
O

loss/mul/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
V
loss/mulMul
loss/mul/xloss/dense_2_loss/Mean_1*
_output_shapes
: *
T0
W
metrics/acc/Cast/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
u
metrics/acc/GreaterGreaterdense_2/BiasAddmetrics/acc/Cast/x*'
_output_shapes
:€€€€€€€€€*
T0
А
metrics/acc/Cast_1Castmetrics/acc/Greater*
Truncate( *'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0

y
metrics/acc/EqualEqualdense_2_targetmetrics/acc/Cast_1*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
З
metrics/acc/Cast_2Castmetrics/acc/Equal*

SrcT0
*
Truncate( *0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

DstT0
m
"metrics/acc/Mean/reduction_indicesConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Ы
metrics/acc/MeanMeanmetrics/acc/Cast_2"metrics/acc/Mean/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:€€€€€€€€€
[
metrics/acc/ConstConst*
_output_shapes
:*
valueB: *
dtype0
}
metrics/acc/Mean_1Meanmetrics/acc/Meanmetrics/acc/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
}
training/Adam/gradients/ShapeConst*
dtype0*
_output_shapes
: *
_class
loc:@loss/mul*
valueB 
Г
!training/Adam/gradients/grad_ys_0Const*
_output_shapes
: *
_class
loc:@loss/mul*
valueB
 *  А?*
dtype0
ґ
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
_class
loc:@loss/mul*

index_type0*
_output_shapes
: *
T0
¶
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/dense_2_loss/Mean_1*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
Ъ
+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
≥
Ctraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Reshape/shapeConst*+
_class!
loc:@loss/dense_2_loss/Mean_1*
valueB *
dtype0*
_output_shapes
: 
Ц
=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1Ctraining/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Reshape/shape*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
Tshape0*
_output_shapes
: 
Ђ
;training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/ConstConst*
dtype0*
_output_shapes
: *+
_class!
loc:@loss/dense_2_loss/Mean_1*
valueB 
Ю
:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/TileTile=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Reshape;training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Const*

Tmultiples0*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1*
_output_shapes
: 
ѓ
=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Const_1Const*+
_class!
loc:@loss/dense_2_loss/Mean_1*
valueB
 *  А?*
dtype0*
_output_shapes
: 
С
=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/truedivRealDiv:training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Tile=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/Const_1*
_output_shapes
: *
T0*+
_class!
loc:@loss/dense_2_loss/Mean_1
≤
@training/Adam/gradients/loss/dense_2_loss/Select_grad/zeros_likeConst*+
_class!
loc:@loss/dense_2_loss/Select*
valueB
 *    *
dtype0*
_output_shapes
: 
∞
<training/Adam/gradients/loss/dense_2_loss/Select_grad/SelectSelectloss/dense_2_loss/Greater=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/truediv@training/Adam/gradients/loss/dense_2_loss/Select_grad/zeros_like*+
_class!
loc:@loss/dense_2_loss/Select*
_output_shapes
: *
T0
≤
>training/Adam/gradients/loss/dense_2_loss/Select_grad/Select_1Selectloss/dense_2_loss/Greater@training/Adam/gradients/loss/dense_2_loss/Select_grad/zeros_like=training/Adam/gradients/loss/dense_2_loss/Mean_1_grad/truediv*+
_class!
loc:@loss/dense_2_loss/Select*
_output_shapes
: *
T0
±
>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/ShapeConst*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
valueB *
dtype0*
_output_shapes
: 
≥
@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1Const*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
valueB *
dtype0*
_output_shapes
: 
÷
Ntraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1*.
_class$
" loc:@loss/dense_2_loss/truediv_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
у
@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDivRealDiv<training/Adam/gradients/loss/dense_2_loss/Select_grad/Selectloss/dense_2_loss/Sum_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
: 
√
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/SumSum@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDivNtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgs*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
: *
	keep_dims( *

Tidx0
®
@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/ReshapeReshape<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
Tshape0*
_output_shapes
: 
Ђ
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/NegNegloss/dense_2_loss/Sum*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
: 
х
Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_1RealDiv<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Negloss/dense_2_loss/Sum_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
: 
ы
Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_2RealDivBtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_1loss/dense_2_loss/Sum_1*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
: *
T0
Ц
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/mulMul<training/Adam/gradients/loss/dense_2_loss/Select_grad/SelectBtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_2*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
: *
T0
√
>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1Sum<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/mulPtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgs:1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1
Ѓ
Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshape_1Reshape>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
Tshape0*
_output_shapes
: 
і
@training/Adam/gradients/loss/dense_2_loss/Sum_grad/Reshape/shapeConst*(
_class
loc:@loss/dense_2_loss/Sum*
valueB:*
dtype0*
_output_shapes
:
¶
:training/Adam/gradients/loss/dense_2_loss/Sum_grad/ReshapeReshape@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshape@training/Adam/gradients/loss/dense_2_loss/Sum_grad/Reshape/shape*
_output_shapes
:*
T0*(
_class
loc:@loss/dense_2_loss/Sum*
Tshape0
Ј
8training/Adam/gradients/loss/dense_2_loss/Sum_grad/ShapeShapeloss/dense_2_loss/Mul*
_output_shapes
:*
T0*(
_class
loc:@loss/dense_2_loss/Sum*
out_type0
Я
7training/Adam/gradients/loss/dense_2_loss/Sum_grad/TileTile:training/Adam/gradients/loss/dense_2_loss/Sum_grad/Reshape8training/Adam/gradients/loss/dense_2_loss/Sum_grad/Shape*#
_output_shapes
:€€€€€€€€€*

Tmultiples0*
T0*(
_class
loc:@loss/dense_2_loss/Sum
Є
8training/Adam/gradients/loss/dense_2_loss/Mul_grad/ShapeShapeloss/dense_2_loss/Mean*
T0*(
_class
loc:@loss/dense_2_loss/Mul*
out_type0*
_output_shapes
:
«
:training/Adam/gradients/loss/dense_2_loss/Mul_grad/Shape_1Shape#loss/dense_2_loss/broadcast_weights*
T0*(
_class
loc:@loss/dense_2_loss/Mul*
out_type0*
_output_shapes
:
Њ
Htraining/Adam/gradients/loss/dense_2_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/loss/dense_2_loss/Mul_grad/Shape:training/Adam/gradients/loss/dense_2_loss/Mul_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*(
_class
loc:@loss/dense_2_loss/Mul
у
6training/Adam/gradients/loss/dense_2_loss/Mul_grad/MulMul7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Tile#loss/dense_2_loss/broadcast_weights*
T0*(
_class
loc:@loss/dense_2_loss/Mul*#
_output_shapes
:€€€€€€€€€
©
6training/Adam/gradients/loss/dense_2_loss/Mul_grad/SumSum6training/Adam/gradients/loss/dense_2_loss/Mul_grad/MulHtraining/Adam/gradients/loss/dense_2_loss/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*(
_class
loc:@loss/dense_2_loss/Mul
Э
:training/Adam/gradients/loss/dense_2_loss/Mul_grad/ReshapeReshape6training/Adam/gradients/loss/dense_2_loss/Mul_grad/Sum8training/Adam/gradients/loss/dense_2_loss/Mul_grad/Shape*
T0*(
_class
loc:@loss/dense_2_loss/Mul*
Tshape0*#
_output_shapes
:€€€€€€€€€
и
8training/Adam/gradients/loss/dense_2_loss/Mul_grad/Mul_1Mulloss/dense_2_loss/Mean7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Tile*
T0*(
_class
loc:@loss/dense_2_loss/Mul*#
_output_shapes
:€€€€€€€€€
ѓ
8training/Adam/gradients/loss/dense_2_loss/Mul_grad/Sum_1Sum8training/Adam/gradients/loss/dense_2_loss/Mul_grad/Mul_1Jtraining/Adam/gradients/loss/dense_2_loss/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*(
_class
loc:@loss/dense_2_loss/Mul*
_output_shapes
:
£
<training/Adam/gradients/loss/dense_2_loss/Mul_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_2_loss/Mul_grad/Sum_1:training/Adam/gradients/loss/dense_2_loss/Mul_grad/Shape_1*(
_class
loc:@loss/dense_2_loss/Mul*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
√
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/ShapeShapeloss/dense_2_loss/logistic_loss*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
out_type0*
_output_shapes
:
•
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/SizeConst*
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_2_loss/Mean*
value	B :
о
7training/Adam/gradients/loss/dense_2_loss/Mean_grad/addAdd(loss/dense_2_loss/Mean/reduction_indices8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
В
7training/Adam/gradients/loss/dense_2_loss/Mean_grad/modFloorMod7training/Adam/gradients/loss/dense_2_loss/Mean_grad/add8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
©
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_1Const*)
_class
loc:@loss/dense_2_loss/Mean*
valueB *
dtype0*
_output_shapes
: 
ђ
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/startConst*)
_class
loc:@loss/dense_2_loss/Mean*
value	B : *
dtype0*
_output_shapes
: 
ђ
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/deltaConst*)
_class
loc:@loss/dense_2_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 
—
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/rangeRange?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/start8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/delta*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:*

Tidx0
Ђ
>training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill/valueConst*)
_class
loc:@loss/dense_2_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 
Ы
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/FillFill;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_1>training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill/value*
_output_shapes
: *
T0*)
_class
loc:@loss/dense_2_loss/Mean*

index_type0
Ф
Atraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitchDynamicStitch9training/Adam/gradients/loss/dense_2_loss/Mean_grad/range7training/Adam/gradients/loss/dense_2_loss/Mean_grad/mod9training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill*)
_class
loc:@loss/dense_2_loss/Mean*
N*
_output_shapes
:*
T0
™
=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum/yConst*)
_class
loc:@loss/dense_2_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 
Ш
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/MaximumMaximumAtraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum/y*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
Р
<training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordivFloorDiv9training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:
є
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/ReshapeReshape:training/Adam/gradients/loss/dense_2_loss/Mul_grad/ReshapeAtraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
Tshape0
≥
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/TileTile;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Reshape<training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv*

Tmultiples0*
T0*)
_class
loc:@loss/dense_2_loss/Mean*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
≈
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_2Shapeloss/dense_2_loss/logistic_loss*
_output_shapes
:*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
out_type0
Љ
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_3Shapeloss/dense_2_loss/Mean*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
out_type0*
_output_shapes
:
Ѓ
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/ConstConst*)
_class
loc:@loss/dense_2_loss/Mean*
valueB: *
dtype0*
_output_shapes
:
°
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/ProdProd;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_29training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0*)
_class
loc:@loss/dense_2_loss/Mean
∞
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const_1Const*
_output_shapes
:*)
_class
loc:@loss/dense_2_loss/Mean*
valueB: *
dtype0
•
:training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod_1Prod;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_3;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const_1*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: *
	keep_dims( *

Tidx0
ђ
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/yConst*)
_class
loc:@loss/dense_2_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 
С
=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1Maximum:training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod_1?training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/y*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
П
>training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv_1FloorDiv8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1*
_output_shapes
: *
T0*)
_class
loc:@loss/dense_2_loss/Mean
л
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/CastCast>training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv_1*

SrcT0*)
_class
loc:@loss/dense_2_loss/Mean*
Truncate( *
_output_shapes
: *

DstT0
†
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/truedivRealDiv8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Tile8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Cast*
T0*)
_class
loc:@loss/dense_2_loss/Mean*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ў
Btraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/ShapeShape#loss/dense_2_loss/logistic_loss/sub*
_output_shapes
:*
T0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
out_type0
Ё
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1Shape%loss/dense_2_loss/logistic_loss/Log1p*
T0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
out_type0*
_output_shapes
:
ж
Rtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/ShapeDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss
ћ
@training/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/SumSum;training/Adam/gradients/loss/dense_2_loss/Mean_grad/truedivRtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
_output_shapes
:
“
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/ReshapeReshape@training/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/SumBtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Shape*
T0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
–
Btraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Sum_1Sum;training/Adam/gradients/loss/dense_2_loss/Mean_grad/truedivTtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/BroadcastGradientArgs:1*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
ѕ
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Sum_1Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Shape_1*
T0*2
_class(
&$loc:@loss/dense_2_loss/logistic_loss*
Tshape0*'
_output_shapes
:€€€€€€€€€
д
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ShapeShape&loss/dense_2_loss/logistic_loss/Select*
_output_shapes
:*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
out_type0
г
Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape_1Shape#loss/dense_2_loss/logistic_loss/mul*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
out_type0*
_output_shapes
:
ц
Vtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ShapeHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape_1*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
б
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/SumSumDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/ReshapeVtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
_output_shapes
:
ў
Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ReshapeReshapeDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/SumFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
Tshape0
е
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Sum_1SumDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/ReshapeXtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/BroadcastGradientArgs:1*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
_output_shapes
:*
	keep_dims( *

Tidx0
о
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/NegNegFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Sum_1*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
_output_shapes
:
ж
Jtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape_1ReshapeDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/NegHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Shape_1*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/sub*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Р
Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/add/xConstG^training/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1*8
_class.
,*loc:@loss/dense_2_loss/logistic_loss/Log1p*
valueB
 *  А?*
dtype0*
_output_shapes
: 
®
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/addAddHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/add/x#loss/dense_2_loss/logistic_loss/Exp*'
_output_shapes
:€€€€€€€€€*
T0*8
_class.
,*loc:@loss/dense_2_loss/logistic_loss/Log1p
П
Mtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/Reciprocal
ReciprocalFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/add*
T0*8
_class.
,*loc:@loss/dense_2_loss/logistic_loss/Log1p*'
_output_shapes
:€€€€€€€€€
–
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/mulMulFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss_grad/Reshape_1Mtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/Reciprocal*8
_class.
,*loc:@loss/dense_2_loss/logistic_loss/Log1p*'
_output_shapes
:€€€€€€€€€*
T0
я
Ntraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_grad/zeros_like	ZerosLikeloss/dense_2_loss/Log*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select*'
_output_shapes
:€€€€€€€€€*
T0
Й
Jtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_grad/SelectSelect,loss/dense_2_loss/logistic_loss/GreaterEqualHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/ReshapeNtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_grad/zeros_like*'
_output_shapes
:€€€€€€€€€*
T0*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select
Л
Ltraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_grad/Select_1Select,loss/dense_2_loss/logistic_loss/GreaterEqualNtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_grad/zeros_likeHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape*'
_output_shapes
:€€€€€€€€€*
T0*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select
”
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ShapeShapeloss/dense_2_loss/Log*
_output_shapes
:*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
out_type0
ќ
Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape_1Shapedense_2_target*
_output_shapes
:*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
out_type0
ц
Vtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ShapeHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape_1*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ъ
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/MulMulJtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape_1dense_2_target*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
б
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/SumSumDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/MulVtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
_output_shapes
:
ў
Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ReshapeReshapeDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/SumFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
Tshape0*'
_output_shapes
:€€€€€€€€€
£
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Mul_1Mulloss/dense_2_loss/LogJtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/sub_grad/Reshape_1*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
з
Ftraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Sum_1SumFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Mul_1Xtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/BroadcastGradientArgs:1*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
и
Jtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Reshape_1ReshapeFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Sum_1Htraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/Shape_1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/mul*
Tshape0
Ґ
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Exp_grad/mulMulFtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Log1p_grad/mul#loss/dense_2_loss/logistic_loss/Exp*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/Exp*'
_output_shapes
:€€€€€€€€€*
T0
с
Ptraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/zeros_like	ZerosLike#loss/dense_2_loss/logistic_loss/Neg*
T0*;
_class1
/-loc:@loss/dense_2_loss/logistic_loss/Select_1*'
_output_shapes
:€€€€€€€€€
Л
Ltraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/SelectSelect,loss/dense_2_loss/logistic_loss/GreaterEqualDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Exp_grad/mulPtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/zeros_like*
T0*;
_class1
/-loc:@loss/dense_2_loss/logistic_loss/Select_1*'
_output_shapes
:€€€€€€€€€
Н
Ntraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/Select_1Select,loss/dense_2_loss/logistic_loss/GreaterEqualPtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/zeros_likeDtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Exp_grad/mul*
T0*;
_class1
/-loc:@loss/dense_2_loss/logistic_loss/Select_1*'
_output_shapes
:€€€€€€€€€
Г
Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Neg_grad/NegNegLtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/Select*'
_output_shapes
:€€€€€€€€€*
T0*6
_class,
*(loc:@loss/dense_2_loss/logistic_loss/Neg
∆
training/Adam/gradients/AddNAddNJtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_grad/SelectHtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/mul_grad/ReshapeNtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Select_1_grad/Select_1Dtraining/Adam/gradients/loss/dense_2_loss/logistic_loss/Neg_grad/Neg*
T0*9
_class/
-+loc:@loss/dense_2_loss/logistic_loss/Select*
N*'
_output_shapes
:€€€€€€€€€
б
=training/Adam/gradients/loss/dense_2_loss/Log_grad/Reciprocal
Reciprocalloss/dense_2_loss/truediv^training/Adam/gradients/AddN*
T0*(
_class
loc:@loss/dense_2_loss/Log*'
_output_shapes
:€€€€€€€€€
ц
6training/Adam/gradients/loss/dense_2_loss/Log_grad/mulMultraining/Adam/gradients/AddN=training/Adam/gradients/loss/dense_2_loss/Log_grad/Reciprocal*
T0*(
_class
loc:@loss/dense_2_loss/Log*'
_output_shapes
:€€€€€€€€€
…
<training/Adam/gradients/loss/dense_2_loss/truediv_grad/ShapeShapeloss/dense_2_loss/clip_by_value*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
out_type0*
_output_shapes
:
√
>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1Shapeloss/dense_2_loss/sub_1*,
_class"
 loc:@loss/dense_2_loss/truediv*
out_type0*
_output_shapes
:*
T0
ќ
Ltraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv
ъ
>training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDivRealDiv6training/Adam/gradients/loss/dense_2_loss/Log_grad/mulloss/dense_2_loss/sub_1*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:€€€€€€€€€
љ
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/SumSum>training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDivLtraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv
±
>training/Adam/gradients/loss/dense_2_loss/truediv_grad/ReshapeReshape:training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
Tshape0*'
_output_shapes
:€€€€€€€€€
¬
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/NegNegloss/dense_2_loss/clip_by_value*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:€€€€€€€€€
А
@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1RealDiv:training/Adam/gradients/loss/dense_2_loss/truediv_grad/Negloss/dense_2_loss/sub_1*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:€€€€€€€€€*
T0
Ж
@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2RealDiv@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1loss/dense_2_loss/sub_1*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:€€€€€€€€€
Ы
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/mulMul6training/Adam/gradients/loss/dense_2_loss/Log_grad/mul@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:€€€€€€€€€
љ
<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum_1Sum:training/Adam/gradients/loss/dense_2_loss/truediv_grad/mulNtraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs:1*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
_output_shapes
:*
	keep_dims( *

Tidx0
Ј
@training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Reshape<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum_1>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
Tshape0*'
_output_shapes
:€€€€€€€€€
©
:training/Adam/gradients/loss/dense_2_loss/sub_1_grad/ShapeConst**
_class 
loc:@loss/dense_2_loss/sub_1*
valueB *
dtype0*
_output_shapes
: 
«
<training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Shape_1Shapeloss/dense_2_loss/clip_by_value*
T0**
_class 
loc:@loss/dense_2_loss/sub_1*
out_type0*
_output_shapes
:
∆
Jtraining/Adam/gradients/loss/dense_2_loss/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Shape<training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Shape_1*
T0**
_class 
loc:@loss/dense_2_loss/sub_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
є
8training/Adam/gradients/loss/dense_2_loss/sub_1_grad/SumSum@training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Jtraining/Adam/gradients/loss/dense_2_loss/sub_1_grad/BroadcastGradientArgs**
_class 
loc:@loss/dense_2_loss/sub_1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Ш
<training/Adam/gradients/loss/dense_2_loss/sub_1_grad/ReshapeReshape8training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Sum:training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Shape*
_output_shapes
: *
T0**
_class 
loc:@loss/dense_2_loss/sub_1*
Tshape0
љ
:training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Sum_1Sum@training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Ltraining/Adam/gradients/loss/dense_2_loss/sub_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0**
_class 
loc:@loss/dense_2_loss/sub_1
 
8training/Adam/gradients/loss/dense_2_loss/sub_1_grad/NegNeg:training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Sum_1*
T0**
_class 
loc:@loss/dense_2_loss/sub_1*
_output_shapes
:
≠
>training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Neg<training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Shape_1*'
_output_shapes
:€€€€€€€€€*
T0**
_class 
loc:@loss/dense_2_loss/sub_1*
Tshape0
П
training/Adam/gradients/AddN_1AddN>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape>training/Adam/gradients/loss/dense_2_loss/sub_1_grad/Reshape_1*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
N*'
_output_shapes
:€€€€€€€€€
Ё
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeShape'loss/dense_2_loss/clip_by_value/Minimum*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
out_type0*
_output_shapes
:
ї
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1Const*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
valueB *
dtype0*
_output_shapes
: 
÷
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Shapetraining/Adam/gradients/AddN_1*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
out_type0*
_output_shapes
:
Ѕ
Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/ConstConst*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
valueB
 *    *
dtype0*
_output_shapes
: 
“
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zerosFillDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/Const*'
_output_shapes
:€€€€€€€€€*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*

index_type0
Б
Itraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualGreaterEqual'loss/dense_2_loss/clip_by_value/Minimumloss/dense_2_loss/Const*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€*
T0
ж
Rtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
в
Ctraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SelectSelectItraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualtraining/Adam/gradients/AddN_1Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros*'
_output_shapes
:€€€€€€€€€*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
д
Etraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1SelectItraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterEqualBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zerostraining/Adam/gradients/AddN_1*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€
‘
@training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SumSumCtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SelectRtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:
…
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeReshape@training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SumBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
Tshape0
Џ
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1SumEtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1Ttraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
Њ
Ftraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
Tshape0*
_output_shapes
: 
’
Jtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ShapeShapedense_2/BiasAdd*
_output_shapes
:*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
out_type0
Ћ
Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*
_output_shapes
: *:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
valueB 
М
Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_2ShapeDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
out_type0*
_output_shapes
:
—
Ptraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros/ConstConst*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
valueB
 *    *
dtype0*
_output_shapes
: 
т
Jtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zerosFillLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_2Ptraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros/Const*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*

index_type0*'
_output_shapes
:€€€€€€€€€*
T0
с
Ntraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualdense_2/BiasAddloss/dense_2_loss/sub*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:€€€€€€€€€
Ж
Ztraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ShapeLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum
•
Ktraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SelectSelectNtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqualDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zeros*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:€€€€€€€€€
І
Mtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Select_1SelectNtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/LessEqualJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/zerosDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*'
_output_shapes
:€€€€€€€€€
ф
Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SumSumKtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SelectZtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum
й
Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/ReshapeReshapeHtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/SumJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
Tshape0*'
_output_shapes
:€€€€€€€€€
ъ
Jtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1SumMtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Select_1\training/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum
ё
Ntraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeJtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Sum_1Ltraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Shape_1*:
_class0
.,loc:@loss/dense_2_loss/clip_by_value/Minimum*
Tshape0*
_output_shapes
: *
T0
х
8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGradLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshape*
T0*"
_class
loc:@dense_2/BiasAdd*
data_formatNHWC*
_output_shapes
:
§
2training/Adam/gradients/dense_2/MatMul_grad/MatMulMatMulLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshapedense_2/MatMul/ReadVariableOp*'
_output_shapes
:€€€€€€€€€@*
transpose_a( *
transpose_b(*
T0*!
_class
loc:@dense_2/MatMul
М
4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1MatMuldense_1/ReluLtraining/Adam/gradients/loss/dense_2_loss/clip_by_value/Minimum_grad/Reshape*
T0*!
_class
loc:@dense_2/MatMul*
_output_shapes

:@*
transpose_a(*
transpose_b( 
”
2training/Adam/gradients/dense_1/Relu_grad/ReluGradReluGrad2training/Adam/gradients/dense_2/MatMul_grad/MatMuldense_1/Relu*
T0*
_class
loc:@dense_1/Relu*'
_output_shapes
:€€€€€€€€€@
џ
8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_1/Relu_grad/ReluGrad*"
_class
loc:@dense_1/BiasAdd*
data_formatNHWC*
_output_shapes
:@*
T0
К
2training/Adam/gradients/dense_1/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_1/Relu_grad/ReluGraddense_1/MatMul/ReadVariableOp*'
_output_shapes
:€€€€€€€€€@*
transpose_a( *
transpose_b(*
T0*!
_class
loc:@dense_1/MatMul
р
4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1MatMul
dense/Relu2training/Adam/gradients/dense_1/Relu_grad/ReluGrad*
_output_shapes

:@@*
transpose_a(*
transpose_b( *
T0*!
_class
loc:@dense_1/MatMul
Ќ
0training/Adam/gradients/dense/Relu_grad/ReluGradReluGrad2training/Adam/gradients/dense_1/MatMul_grad/MatMul
dense/Relu*
_class
loc:@dense/Relu*'
_output_shapes
:€€€€€€€€€@*
T0
’
6training/Adam/gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad0training/Adam/gradients/dense/Relu_grad/ReluGrad*
T0* 
_class
loc:@dense/BiasAdd*
data_formatNHWC*
_output_shapes
:@
В
0training/Adam/gradients/dense/MatMul_grad/MatMulMatMul0training/Adam/gradients/dense/Relu_grad/ReluGraddense/MatMul/ReadVariableOp*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b(*
T0*
_class
loc:@dense/MatMul
т
2training/Adam/gradients/dense/MatMul_grad/MatMul_1MatMulconcatenate/concat0training/Adam/gradients/dense/Relu_grad/ReluGrad*
_output_shapes

:@*
transpose_a(*
transpose_b( *
T0*
_class
loc:@dense/MatMul
U
training/Adam/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 
k
!training/Adam/AssignAddVariableOpAssignAddVariableOpAdam/iterationstraining/Adam/Const*
dtype0	
И
training/Adam/ReadVariableOpReadVariableOpAdam/iterations"^training/Adam/AssignAddVariableOp*
dtype0	*
_output_shapes
: 
i
!training/Adam/Cast/ReadVariableOpReadVariableOpAdam/iterations*
dtype0	*
_output_shapes
: 
}
training/Adam/CastCast!training/Adam/Cast/ReadVariableOp*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
X
training/Adam/add/yConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
b
training/Adam/addAddtraining/Adam/Casttraining/Adam/add/y*
T0*
_output_shapes
: 
d
 training/Adam/Pow/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
n
training/Adam/PowPow training/Adam/Pow/ReadVariableOptraining/Adam/add*
T0*
_output_shapes
: 
X
training/Adam/sub/xConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
T0*
_output_shapes
: 
Z
training/Adam/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_2Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_2*
T0*
_output_shapes
: 
Г
training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const_1*
T0*
_output_shapes
: 
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
_output_shapes
: *
T0
f
"training/Adam/Pow_1/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
r
training/Adam/Pow_1Pow"training/Adam/Pow_1/ReadVariableOptraining/Adam/add*
_output_shapes
: *
T0
Z
training/Adam/sub_1/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
_output_shapes
: *
T0
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
T0*
_output_shapes
: 
^
training/Adam/ReadVariableOp_1ReadVariableOpAdam/lr*
_output_shapes
: *
dtype0
p
training/Adam/mulMultraining/Adam/ReadVariableOp_1training/Adam/truediv*
_output_shapes
: *
T0
h
training/Adam/zerosConst*
valueB@*    *
dtype0*
_output_shapes

:@
ƒ
training/Adam/VariableVarHandleOp*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/Variable*)
_class
loc:@training/Adam/Variable*
	container *
shape
:@
}
7training/Adam/Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable*
_output_shapes
: 
Ц
training/Adam/Variable/AssignAssignVariableOptraining/Adam/Variabletraining/Adam/zeros*)
_class
loc:@training/Adam/Variable*
dtype0
ђ
*training/Adam/Variable/Read/ReadVariableOpReadVariableOptraining/Adam/Variable*)
_class
loc:@training/Adam/Variable*
dtype0*
_output_shapes

:@
b
training/Adam/zeros_1Const*
dtype0*
_output_shapes
:@*
valueB@*    
∆
training/Adam/Variable_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_1*+
_class!
loc:@training/Adam/Variable_1*
	container *
shape:@
Б
9training/Adam/Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_1*
_output_shapes
: 
Ю
training/Adam/Variable_1/AssignAssignVariableOptraining/Adam/Variable_1training/Adam/zeros_1*+
_class!
loc:@training/Adam/Variable_1*
dtype0
Ѓ
,training/Adam/Variable_1/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_1*+
_class!
loc:@training/Adam/Variable_1*
dtype0*
_output_shapes
:@
v
%training/Adam/zeros_2/shape_as_tensorConst*
valueB"@   @   *
dtype0*
_output_shapes
:
`
training/Adam/zeros_2/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ь
training/Adam/zeros_2Fill%training/Adam/zeros_2/shape_as_tensortraining/Adam/zeros_2/Const*
_output_shapes

:@@*
T0*

index_type0
 
training/Adam/Variable_2VarHandleOp*)
shared_nametraining/Adam/Variable_2*+
_class!
loc:@training/Adam/Variable_2*
	container *
shape
:@@*
dtype0*
_output_shapes
: 
Б
9training/Adam/Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_2*
_output_shapes
: 
Ю
training/Adam/Variable_2/AssignAssignVariableOptraining/Adam/Variable_2training/Adam/zeros_2*+
_class!
loc:@training/Adam/Variable_2*
dtype0
≤
,training/Adam/Variable_2/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_2*+
_class!
loc:@training/Adam/Variable_2*
dtype0*
_output_shapes

:@@
b
training/Adam/zeros_3Const*
valueB@*    *
dtype0*
_output_shapes
:@
∆
training/Adam/Variable_3VarHandleOp*
	container *
shape:@*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_3*+
_class!
loc:@training/Adam/Variable_3
Б
9training/Adam/Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_3*
_output_shapes
: 
Ю
training/Adam/Variable_3/AssignAssignVariableOptraining/Adam/Variable_3training/Adam/zeros_3*+
_class!
loc:@training/Adam/Variable_3*
dtype0
Ѓ
,training/Adam/Variable_3/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_3*+
_class!
loc:@training/Adam/Variable_3*
dtype0*
_output_shapes
:@
j
training/Adam/zeros_4Const*
valueB@*    *
dtype0*
_output_shapes

:@
 
training/Adam/Variable_4VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_4*+
_class!
loc:@training/Adam/Variable_4*
	container *
shape
:@
Б
9training/Adam/Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_4*
_output_shapes
: 
Ю
training/Adam/Variable_4/AssignAssignVariableOptraining/Adam/Variable_4training/Adam/zeros_4*+
_class!
loc:@training/Adam/Variable_4*
dtype0
≤
,training/Adam/Variable_4/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_4*
_output_shapes

:@*+
_class!
loc:@training/Adam/Variable_4*
dtype0
b
training/Adam/zeros_5Const*
valueB*    *
dtype0*
_output_shapes
:
∆
training/Adam/Variable_5VarHandleOp*
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5*
	container 
Б
9training/Adam/Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_5*
_output_shapes
: 
Ю
training/Adam/Variable_5/AssignAssignVariableOptraining/Adam/Variable_5training/Adam/zeros_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0
Ѓ
,training/Adam/Variable_5/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0*
_output_shapes
:
j
training/Adam/zeros_6Const*
_output_shapes

:@*
valueB@*    *
dtype0
 
training/Adam/Variable_6VarHandleOp*
shape
:@*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_6*+
_class!
loc:@training/Adam/Variable_6*
	container 
Б
9training/Adam/Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_6*
_output_shapes
: 
Ю
training/Adam/Variable_6/AssignAssignVariableOptraining/Adam/Variable_6training/Adam/zeros_6*+
_class!
loc:@training/Adam/Variable_6*
dtype0
≤
,training/Adam/Variable_6/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_6*
_output_shapes

:@*+
_class!
loc:@training/Adam/Variable_6*
dtype0
b
training/Adam/zeros_7Const*
valueB@*    *
dtype0*
_output_shapes
:@
∆
training/Adam/Variable_7VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_7*+
_class!
loc:@training/Adam/Variable_7*
	container *
shape:@
Б
9training/Adam/Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_7*
_output_shapes
: 
Ю
training/Adam/Variable_7/AssignAssignVariableOptraining/Adam/Variable_7training/Adam/zeros_7*+
_class!
loc:@training/Adam/Variable_7*
dtype0
Ѓ
,training/Adam/Variable_7/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_7*+
_class!
loc:@training/Adam/Variable_7*
dtype0*
_output_shapes
:@
v
%training/Adam/zeros_8/shape_as_tensorConst*
valueB"@   @   *
dtype0*
_output_shapes
:
`
training/Adam/zeros_8/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
Ь
training/Adam/zeros_8Fill%training/Adam/zeros_8/shape_as_tensortraining/Adam/zeros_8/Const*
T0*

index_type0*
_output_shapes

:@@
 
training/Adam/Variable_8VarHandleOp*
	container *
shape
:@@*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_8*+
_class!
loc:@training/Adam/Variable_8
Б
9training/Adam/Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_8*
_output_shapes
: 
Ю
training/Adam/Variable_8/AssignAssignVariableOptraining/Adam/Variable_8training/Adam/zeros_8*+
_class!
loc:@training/Adam/Variable_8*
dtype0
≤
,training/Adam/Variable_8/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_8*
dtype0*
_output_shapes

:@@*+
_class!
loc:@training/Adam/Variable_8
b
training/Adam/zeros_9Const*
valueB@*    *
dtype0*
_output_shapes
:@
∆
training/Adam/Variable_9VarHandleOp*)
shared_nametraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
	container *
shape:@*
dtype0*
_output_shapes
: 
Б
9training/Adam/Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_9*
_output_shapes
: 
Ю
training/Adam/Variable_9/AssignAssignVariableOptraining/Adam/Variable_9training/Adam/zeros_9*+
_class!
loc:@training/Adam/Variable_9*
dtype0
Ѓ
,training/Adam/Variable_9/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
dtype0*
_output_shapes
:@
k
training/Adam/zeros_10Const*
valueB@*    *
dtype0*
_output_shapes

:@
Ќ
training/Adam/Variable_10VarHandleOp**
shared_nametraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
	container *
shape
:@*
dtype0*
_output_shapes
: 
Г
:training/Adam/Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_10*
_output_shapes
: 
Ґ
 training/Adam/Variable_10/AssignAssignVariableOptraining/Adam/Variable_10training/Adam/zeros_10*,
_class"
 loc:@training/Adam/Variable_10*
dtype0
µ
-training/Adam/Variable_10/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
dtype0*
_output_shapes

:@
c
training/Adam/zeros_11Const*
valueB*    *
dtype0*
_output_shapes
:
…
training/Adam/Variable_11VarHandleOp**
shared_nametraining/Adam/Variable_11*,
_class"
 loc:@training/Adam/Variable_11*
	container *
shape:*
dtype0*
_output_shapes
: 
Г
:training/Adam/Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_11*
_output_shapes
: 
Ґ
 training/Adam/Variable_11/AssignAssignVariableOptraining/Adam/Variable_11training/Adam/zeros_11*,
_class"
 loc:@training/Adam/Variable_11*
dtype0
±
-training/Adam/Variable_11/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_11*,
_class"
 loc:@training/Adam/Variable_11*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_12/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_12/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_12Fill&training/Adam/zeros_12/shape_as_tensortraining/Adam/zeros_12/Const*
_output_shapes
:*
T0*

index_type0
…
training/Adam/Variable_12VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_12*,
_class"
 loc:@training/Adam/Variable_12*
	container *
shape:
Г
:training/Adam/Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_12*
_output_shapes
: 
Ґ
 training/Adam/Variable_12/AssignAssignVariableOptraining/Adam/Variable_12training/Adam/zeros_12*,
_class"
 loc:@training/Adam/Variable_12*
dtype0
±
-training/Adam/Variable_12/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_12*,
_class"
 loc:@training/Adam/Variable_12*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_13/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training/Adam/zeros_13/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_13Fill&training/Adam/zeros_13/shape_as_tensortraining/Adam/zeros_13/Const*
T0*

index_type0*
_output_shapes
:
…
training/Adam/Variable_13VarHandleOp**
shared_nametraining/Adam/Variable_13*,
_class"
 loc:@training/Adam/Variable_13*
	container *
shape:*
dtype0*
_output_shapes
: 
Г
:training/Adam/Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_13*
_output_shapes
: 
Ґ
 training/Adam/Variable_13/AssignAssignVariableOptraining/Adam/Variable_13training/Adam/zeros_13*,
_class"
 loc:@training/Adam/Variable_13*
dtype0
±
-training/Adam/Variable_13/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_13*,
_class"
 loc:@training/Adam/Variable_13*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_14/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_14/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_14Fill&training/Adam/zeros_14/shape_as_tensortraining/Adam/zeros_14/Const*
T0*

index_type0*
_output_shapes
:
…
training/Adam/Variable_14VarHandleOp*
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_14*,
_class"
 loc:@training/Adam/Variable_14*
	container 
Г
:training/Adam/Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_14*
_output_shapes
: 
Ґ
 training/Adam/Variable_14/AssignAssignVariableOptraining/Adam/Variable_14training/Adam/zeros_14*,
_class"
 loc:@training/Adam/Variable_14*
dtype0
±
-training/Adam/Variable_14/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_14*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_14*
dtype0
p
&training/Adam/zeros_15/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training/Adam/zeros_15/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_15Fill&training/Adam/zeros_15/shape_as_tensortraining/Adam/zeros_15/Const*
T0*

index_type0*
_output_shapes
:
…
training/Adam/Variable_15VarHandleOp*,
_class"
 loc:@training/Adam/Variable_15*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_15
Г
:training/Adam/Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_15*
_output_shapes
: 
Ґ
 training/Adam/Variable_15/AssignAssignVariableOptraining/Adam/Variable_15training/Adam/zeros_15*
dtype0*,
_class"
 loc:@training/Adam/Variable_15
±
-training/Adam/Variable_15/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_15*,
_class"
 loc:@training/Adam/Variable_15*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_16/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training/Adam/zeros_16/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
Ы
training/Adam/zeros_16Fill&training/Adam/zeros_16/shape_as_tensortraining/Adam/zeros_16/Const*
T0*

index_type0*
_output_shapes
:
…
training/Adam/Variable_16VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_16*,
_class"
 loc:@training/Adam/Variable_16*
	container *
shape:
Г
:training/Adam/Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_16*
_output_shapes
: 
Ґ
 training/Adam/Variable_16/AssignAssignVariableOptraining/Adam/Variable_16training/Adam/zeros_16*,
_class"
 loc:@training/Adam/Variable_16*
dtype0
±
-training/Adam/Variable_16/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_16*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_16*
dtype0
p
&training/Adam/zeros_17/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training/Adam/zeros_17/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ы
training/Adam/zeros_17Fill&training/Adam/zeros_17/shape_as_tensortraining/Adam/zeros_17/Const*
T0*

index_type0*
_output_shapes
:
…
training/Adam/Variable_17VarHandleOp*,
_class"
 loc:@training/Adam/Variable_17*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_17
Г
:training/Adam/Variable_17/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_17*
_output_shapes
: 
Ґ
 training/Adam/Variable_17/AssignAssignVariableOptraining/Adam/Variable_17training/Adam/zeros_17*,
_class"
 loc:@training/Adam/Variable_17*
dtype0
±
-training/Adam/Variable_17/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_17*,
_class"
 loc:@training/Adam/Variable_17*
dtype0*
_output_shapes
:
b
training/Adam/ReadVariableOp_2ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
y
"training/Adam/mul_1/ReadVariableOpReadVariableOptraining/Adam/Variable*
dtype0*
_output_shapes

:@
З
training/Adam/mul_1Multraining/Adam/ReadVariableOp_2"training/Adam/mul_1/ReadVariableOp*
_output_shapes

:@*
T0
b
training/Adam/ReadVariableOp_3ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
Z
training/Adam/sub_2/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
r
training/Adam/sub_2Subtraining/Adam/sub_2/xtraining/Adam/ReadVariableOp_3*
_output_shapes
: *
T0
М
training/Adam/mul_2Multraining/Adam/sub_22training/Adam/gradients/dense/MatMul_grad/MatMul_1*
T0*
_output_shapes

:@
m
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*
_output_shapes

:@*
T0
b
training/Adam/ReadVariableOp_4ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
{
"training/Adam/mul_3/ReadVariableOpReadVariableOptraining/Adam/Variable_6*
_output_shapes

:@*
dtype0
З
training/Adam/mul_3Multraining/Adam/ReadVariableOp_4"training/Adam/mul_3/ReadVariableOp*
T0*
_output_shapes

:@
b
training/Adam/ReadVariableOp_5ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_3/xConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
r
training/Adam/sub_3Subtraining/Adam/sub_3/xtraining/Adam/ReadVariableOp_5*
_output_shapes
: *
T0
{
training/Adam/SquareSquare2training/Adam/gradients/dense/MatMul_grad/MatMul_1*
_output_shapes

:@*
T0
n
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
T0*
_output_shapes

:@
m
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*
T0*
_output_shapes

:@
k
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
_output_shapes

:@*
T0
Z
training/Adam/Const_3Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_4Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
Е
%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_4*
_output_shapes

:@*
T0
П
training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_3*
T0*
_output_shapes

:@
d
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
_output_shapes

:@*
T0
Z
training/Adam/add_3/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
p
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*
_output_shapes

:@*
T0
u
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3*
_output_shapes

:@*
T0
k
training/Adam/ReadVariableOp_6ReadVariableOpdense/kernel*
dtype0*
_output_shapes

:@
|
training/Adam/sub_4Subtraining/Adam/ReadVariableOp_6training/Adam/truediv_1*
T0*
_output_shapes

:@
l
training/Adam/AssignVariableOpAssignVariableOptraining/Adam/Variabletraining/Adam/add_1*
dtype0
Ц
training/Adam/ReadVariableOp_7ReadVariableOptraining/Adam/Variable^training/Adam/AssignVariableOp*
dtype0*
_output_shapes

:@
p
 training/Adam/AssignVariableOp_1AssignVariableOptraining/Adam/Variable_6training/Adam/add_2*
dtype0
Ъ
training/Adam/ReadVariableOp_8ReadVariableOptraining/Adam/Variable_6!^training/Adam/AssignVariableOp_1*
dtype0*
_output_shapes

:@
d
 training/Adam/AssignVariableOp_2AssignVariableOpdense/kerneltraining/Adam/sub_4*
dtype0
О
training/Adam/ReadVariableOp_9ReadVariableOpdense/kernel!^training/Adam/AssignVariableOp_2*
_output_shapes

:@*
dtype0
c
training/Adam/ReadVariableOp_10ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
w
"training/Adam/mul_6/ReadVariableOpReadVariableOptraining/Adam/Variable_1*
dtype0*
_output_shapes
:@
Д
training/Adam/mul_6Multraining/Adam/ReadVariableOp_10"training/Adam/mul_6/ReadVariableOp*
_output_shapes
:@*
T0
c
training/Adam/ReadVariableOp_11ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_5/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_5Subtraining/Adam/sub_5/xtraining/Adam/ReadVariableOp_11*
T0*
_output_shapes
: 
М
training/Adam/mul_7Multraining/Adam/sub_56training/Adam/gradients/dense/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
i
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
T0*
_output_shapes
:@
c
training/Adam/ReadVariableOp_12ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
w
"training/Adam/mul_8/ReadVariableOpReadVariableOptraining/Adam/Variable_7*
_output_shapes
:@*
dtype0
Д
training/Adam/mul_8Multraining/Adam/ReadVariableOp_12"training/Adam/mul_8/ReadVariableOp*
_output_shapes
:@*
T0
c
training/Adam/ReadVariableOp_13ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
Z
training/Adam/sub_6/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_6Subtraining/Adam/sub_6/xtraining/Adam/ReadVariableOp_13*
_output_shapes
: *
T0
}
training/Adam/Square_1Square6training/Adam/gradients/dense/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
l
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
T0*
_output_shapes
:@
i
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
_output_shapes
:@*
T0
h
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
_output_shapes
:@*
T0
Z
training/Adam/Const_5Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_6Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
Б
%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_6*
T0*
_output_shapes
:@
Л
training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_5*
T0*
_output_shapes
:@
`
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*
_output_shapes
:@
Z
training/Adam/add_6/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
l
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
_output_shapes
:@*
T0
r
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
T0*
_output_shapes
:@
f
training/Adam/ReadVariableOp_14ReadVariableOp
dense/bias*
dtype0*
_output_shapes
:@
y
training/Adam/sub_7Subtraining/Adam/ReadVariableOp_14training/Adam/truediv_2*
T0*
_output_shapes
:@
p
 training/Adam/AssignVariableOp_3AssignVariableOptraining/Adam/Variable_1training/Adam/add_4*
dtype0
Ч
training/Adam/ReadVariableOp_15ReadVariableOptraining/Adam/Variable_1!^training/Adam/AssignVariableOp_3*
dtype0*
_output_shapes
:@
p
 training/Adam/AssignVariableOp_4AssignVariableOptraining/Adam/Variable_7training/Adam/add_5*
dtype0
Ч
training/Adam/ReadVariableOp_16ReadVariableOptraining/Adam/Variable_7!^training/Adam/AssignVariableOp_4*
_output_shapes
:@*
dtype0
b
 training/Adam/AssignVariableOp_5AssignVariableOp
dense/biastraining/Adam/sub_7*
dtype0
Й
training/Adam/ReadVariableOp_17ReadVariableOp
dense/bias!^training/Adam/AssignVariableOp_5*
dtype0*
_output_shapes
:@
c
training/Adam/ReadVariableOp_18ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
|
#training/Adam/mul_11/ReadVariableOpReadVariableOptraining/Adam/Variable_2*
dtype0*
_output_shapes

:@@
К
training/Adam/mul_11Multraining/Adam/ReadVariableOp_18#training/Adam/mul_11/ReadVariableOp*
T0*
_output_shapes

:@@
c
training/Adam/ReadVariableOp_19ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_8/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_8Subtraining/Adam/sub_8/xtraining/Adam/ReadVariableOp_19*
_output_shapes
: *
T0
П
training/Adam/mul_12Multraining/Adam/sub_84training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
_output_shapes

:@@*
T0
o
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
T0*
_output_shapes

:@@
c
training/Adam/ReadVariableOp_20ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
|
#training/Adam/mul_13/ReadVariableOpReadVariableOptraining/Adam/Variable_8*
dtype0*
_output_shapes

:@@
К
training/Adam/mul_13Multraining/Adam/ReadVariableOp_20#training/Adam/mul_13/ReadVariableOp*
T0*
_output_shapes

:@@
c
training/Adam/ReadVariableOp_21ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_9/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_9Subtraining/Adam/sub_9/xtraining/Adam/ReadVariableOp_21*
_output_shapes
: *
T0

training/Adam/Square_2Square4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:@@
q
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
_output_shapes

:@@*
T0
o
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
T0*
_output_shapes

:@@
l
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
T0*
_output_shapes

:@@
Z
training/Adam/Const_7Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_8Const*
_output_shapes
: *
valueB
 *  А*
dtype0
Е
%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_8*
T0*
_output_shapes

:@@
П
training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_7*
_output_shapes

:@@*
T0
d
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*
_output_shapes

:@@
Z
training/Adam/add_9/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
p
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
_output_shapes

:@@*
T0
v
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
_output_shapes

:@@*
T0
n
training/Adam/ReadVariableOp_22ReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:@@
~
training/Adam/sub_10Subtraining/Adam/ReadVariableOp_22training/Adam/truediv_3*
T0*
_output_shapes

:@@
p
 training/Adam/AssignVariableOp_6AssignVariableOptraining/Adam/Variable_2training/Adam/add_7*
dtype0
Ы
training/Adam/ReadVariableOp_23ReadVariableOptraining/Adam/Variable_2!^training/Adam/AssignVariableOp_6*
dtype0*
_output_shapes

:@@
p
 training/Adam/AssignVariableOp_7AssignVariableOptraining/Adam/Variable_8training/Adam/add_8*
dtype0
Ы
training/Adam/ReadVariableOp_24ReadVariableOptraining/Adam/Variable_8!^training/Adam/AssignVariableOp_7*
dtype0*
_output_shapes

:@@
g
 training/Adam/AssignVariableOp_8AssignVariableOpdense_1/kerneltraining/Adam/sub_10*
dtype0
С
training/Adam/ReadVariableOp_25ReadVariableOpdense_1/kernel!^training/Adam/AssignVariableOp_8*
dtype0*
_output_shapes

:@@
c
training/Adam/ReadVariableOp_26ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_16/ReadVariableOpReadVariableOptraining/Adam/Variable_3*
dtype0*
_output_shapes
:@
Ж
training/Adam/mul_16Multraining/Adam/ReadVariableOp_26#training/Adam/mul_16/ReadVariableOp*
T0*
_output_shapes
:@
c
training/Adam/ReadVariableOp_27ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
[
training/Adam/sub_11/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
u
training/Adam/sub_11Subtraining/Adam/sub_11/xtraining/Adam/ReadVariableOp_27*
_output_shapes
: *
T0
Р
training/Adam/mul_17Multraining/Adam/sub_118training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
l
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*
T0*
_output_shapes
:@
c
training/Adam/ReadVariableOp_28ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_18/ReadVariableOpReadVariableOptraining/Adam/Variable_9*
_output_shapes
:@*
dtype0
Ж
training/Adam/mul_18Multraining/Adam/ReadVariableOp_28#training/Adam/mul_18/ReadVariableOp*
T0*
_output_shapes
:@
c
training/Adam/ReadVariableOp_29ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_12/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_12Subtraining/Adam/sub_12/xtraining/Adam/ReadVariableOp_29*
_output_shapes
: *
T0

training/Adam/Square_3Square8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
n
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
T0*
_output_shapes
:@
l
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
T0*
_output_shapes
:@
i
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
_output_shapes
:@*
T0
Z
training/Adam/Const_9Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_10Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
Г
%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_10*
T0*
_output_shapes
:@
Л
training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_9*
T0*
_output_shapes
:@
`
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
T0*
_output_shapes
:@
[
training/Adam/add_12/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
n
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
T0*
_output_shapes
:@
s
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
_output_shapes
:@*
T0
h
training/Adam/ReadVariableOp_30ReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:@
z
training/Adam/sub_13Subtraining/Adam/ReadVariableOp_30training/Adam/truediv_4*
_output_shapes
:@*
T0
q
 training/Adam/AssignVariableOp_9AssignVariableOptraining/Adam/Variable_3training/Adam/add_10*
dtype0
Ч
training/Adam/ReadVariableOp_31ReadVariableOptraining/Adam/Variable_3!^training/Adam/AssignVariableOp_9*
dtype0*
_output_shapes
:@
r
!training/Adam/AssignVariableOp_10AssignVariableOptraining/Adam/Variable_9training/Adam/add_11*
dtype0
Ш
training/Adam/ReadVariableOp_32ReadVariableOptraining/Adam/Variable_9"^training/Adam/AssignVariableOp_10*
dtype0*
_output_shapes
:@
f
!training/Adam/AssignVariableOp_11AssignVariableOpdense_1/biastraining/Adam/sub_13*
dtype0
М
training/Adam/ReadVariableOp_33ReadVariableOpdense_1/bias"^training/Adam/AssignVariableOp_11*
dtype0*
_output_shapes
:@
c
training/Adam/ReadVariableOp_34ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
|
#training/Adam/mul_21/ReadVariableOpReadVariableOptraining/Adam/Variable_4*
dtype0*
_output_shapes

:@
К
training/Adam/mul_21Multraining/Adam/ReadVariableOp_34#training/Adam/mul_21/ReadVariableOp*
T0*
_output_shapes

:@
c
training/Adam/ReadVariableOp_35ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
[
training/Adam/sub_14/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_14Subtraining/Adam/sub_14/xtraining/Adam/ReadVariableOp_35*
T0*
_output_shapes
: 
Р
training/Adam/mul_22Multraining/Adam/sub_144training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes

:@
p
training/Adam/add_13Addtraining/Adam/mul_21training/Adam/mul_22*
_output_shapes

:@*
T0
c
training/Adam/ReadVariableOp_36ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
}
#training/Adam/mul_23/ReadVariableOpReadVariableOptraining/Adam/Variable_10*
dtype0*
_output_shapes

:@
К
training/Adam/mul_23Multraining/Adam/ReadVariableOp_36#training/Adam/mul_23/ReadVariableOp*
T0*
_output_shapes

:@
c
training/Adam/ReadVariableOp_37ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_15/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_15Subtraining/Adam/sub_15/xtraining/Adam/ReadVariableOp_37*
_output_shapes
: *
T0

training/Adam/Square_4Square4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
_output_shapes

:@*
T0
r
training/Adam/mul_24Multraining/Adam/sub_15training/Adam/Square_4*
T0*
_output_shapes

:@
p
training/Adam/add_14Addtraining/Adam/mul_23training/Adam/mul_24*
_output_shapes

:@*
T0
m
training/Adam/mul_25Multraining/Adam/multraining/Adam/add_13*
T0*
_output_shapes

:@
[
training/Adam/Const_11Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_12Const*
dtype0*
_output_shapes
: *
valueB
 *  А
З
%training/Adam/clip_by_value_5/MinimumMinimumtraining/Adam/add_14training/Adam/Const_12*
T0*
_output_shapes

:@
Р
training/Adam/clip_by_value_5Maximum%training/Adam/clip_by_value_5/Minimumtraining/Adam/Const_11*
_output_shapes

:@*
T0
d
training/Adam/Sqrt_5Sqrttraining/Adam/clip_by_value_5*
T0*
_output_shapes

:@
[
training/Adam/add_15/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
r
training/Adam/add_15Addtraining/Adam/Sqrt_5training/Adam/add_15/y*
T0*
_output_shapes

:@
w
training/Adam/truediv_5RealDivtraining/Adam/mul_25training/Adam/add_15*
T0*
_output_shapes

:@
n
training/Adam/ReadVariableOp_38ReadVariableOpdense_2/kernel*
dtype0*
_output_shapes

:@
~
training/Adam/sub_16Subtraining/Adam/ReadVariableOp_38training/Adam/truediv_5*
_output_shapes

:@*
T0
r
!training/Adam/AssignVariableOp_12AssignVariableOptraining/Adam/Variable_4training/Adam/add_13*
dtype0
Ь
training/Adam/ReadVariableOp_39ReadVariableOptraining/Adam/Variable_4"^training/Adam/AssignVariableOp_12*
dtype0*
_output_shapes

:@
s
!training/Adam/AssignVariableOp_13AssignVariableOptraining/Adam/Variable_10training/Adam/add_14*
dtype0
Э
training/Adam/ReadVariableOp_40ReadVariableOptraining/Adam/Variable_10"^training/Adam/AssignVariableOp_13*
dtype0*
_output_shapes

:@
h
!training/Adam/AssignVariableOp_14AssignVariableOpdense_2/kerneltraining/Adam/sub_16*
dtype0
Т
training/Adam/ReadVariableOp_41ReadVariableOpdense_2/kernel"^training/Adam/AssignVariableOp_14*
dtype0*
_output_shapes

:@
c
training/Adam/ReadVariableOp_42ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_26/ReadVariableOpReadVariableOptraining/Adam/Variable_5*
dtype0*
_output_shapes
:
Ж
training/Adam/mul_26Multraining/Adam/ReadVariableOp_42#training/Adam/mul_26/ReadVariableOp*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_43ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_17/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_17Subtraining/Adam/sub_17/xtraining/Adam/ReadVariableOp_43*
T0*
_output_shapes
: 
Р
training/Adam/mul_27Multraining/Adam/sub_178training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
l
training/Adam/add_16Addtraining/Adam/mul_26training/Adam/mul_27*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_44ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_28/ReadVariableOpReadVariableOptraining/Adam/Variable_11*
dtype0*
_output_shapes
:
Ж
training/Adam/mul_28Multraining/Adam/ReadVariableOp_44#training/Adam/mul_28/ReadVariableOp*
_output_shapes
:*
T0
c
training/Adam/ReadVariableOp_45ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
[
training/Adam/sub_18/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_18Subtraining/Adam/sub_18/xtraining/Adam/ReadVariableOp_45*
_output_shapes
: *
T0

training/Adam/Square_5Square8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
n
training/Adam/mul_29Multraining/Adam/sub_18training/Adam/Square_5*
_output_shapes
:*
T0
l
training/Adam/add_17Addtraining/Adam/mul_28training/Adam/mul_29*
T0*
_output_shapes
:
i
training/Adam/mul_30Multraining/Adam/multraining/Adam/add_16*
_output_shapes
:*
T0
[
training/Adam/Const_13Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_14Const*
valueB
 *  А*
dtype0*
_output_shapes
: 
Г
%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/add_17training/Adam/Const_14*
T0*
_output_shapes
:
М
training/Adam/clip_by_value_6Maximum%training/Adam/clip_by_value_6/Minimumtraining/Adam/Const_13*
T0*
_output_shapes
:
`
training/Adam/Sqrt_6Sqrttraining/Adam/clip_by_value_6*
T0*
_output_shapes
:
[
training/Adam/add_18/yConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
n
training/Adam/add_18Addtraining/Adam/Sqrt_6training/Adam/add_18/y*
_output_shapes
:*
T0
s
training/Adam/truediv_6RealDivtraining/Adam/mul_30training/Adam/add_18*
_output_shapes
:*
T0
h
training/Adam/ReadVariableOp_46ReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:
z
training/Adam/sub_19Subtraining/Adam/ReadVariableOp_46training/Adam/truediv_6*
T0*
_output_shapes
:
r
!training/Adam/AssignVariableOp_15AssignVariableOptraining/Adam/Variable_5training/Adam/add_16*
dtype0
Ш
training/Adam/ReadVariableOp_47ReadVariableOptraining/Adam/Variable_5"^training/Adam/AssignVariableOp_15*
dtype0*
_output_shapes
:
s
!training/Adam/AssignVariableOp_16AssignVariableOptraining/Adam/Variable_11training/Adam/add_17*
dtype0
Щ
training/Adam/ReadVariableOp_48ReadVariableOptraining/Adam/Variable_11"^training/Adam/AssignVariableOp_16*
dtype0*
_output_shapes
:
f
!training/Adam/AssignVariableOp_17AssignVariableOpdense_2/biastraining/Adam/sub_19*
dtype0
М
training/Adam/ReadVariableOp_49ReadVariableOpdense_2/bias"^training/Adam/AssignVariableOp_17*
dtype0*
_output_shapes
:
ї
training/group_depsNoOp	^loss/mul^metrics/acc/Mean_1^training/Adam/ReadVariableOp ^training/Adam/ReadVariableOp_15 ^training/Adam/ReadVariableOp_16 ^training/Adam/ReadVariableOp_17 ^training/Adam/ReadVariableOp_23 ^training/Adam/ReadVariableOp_24 ^training/Adam/ReadVariableOp_25 ^training/Adam/ReadVariableOp_31 ^training/Adam/ReadVariableOp_32 ^training/Adam/ReadVariableOp_33 ^training/Adam/ReadVariableOp_39 ^training/Adam/ReadVariableOp_40 ^training/Adam/ReadVariableOp_41 ^training/Adam/ReadVariableOp_47 ^training/Adam/ReadVariableOp_48 ^training/Adam/ReadVariableOp_49^training/Adam/ReadVariableOp_7^training/Adam/ReadVariableOp_8^training/Adam/ReadVariableOp_9
[
VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_17*
_output_shapes
: 
\
VarIsInitializedOp_1VarIsInitializedOptraining/Adam/Variable_6*
_output_shapes
: 
]
VarIsInitializedOp_2VarIsInitializedOptraining/Adam/Variable_15*
_output_shapes
: 
R
VarIsInitializedOp_3VarIsInitializedOpdense_2/kernel*
_output_shapes
: 
\
VarIsInitializedOp_4VarIsInitializedOptraining/Adam/Variable_1*
_output_shapes
: 
N
VarIsInitializedOp_5VarIsInitializedOp
Adam/decay*
_output_shapes
: 
R
VarIsInitializedOp_6VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
P
VarIsInitializedOp_7VarIsInitializedOpdense/kernel*
_output_shapes
: 
P
VarIsInitializedOp_8VarIsInitializedOpdense_1/bias*
_output_shapes
: 
]
VarIsInitializedOp_9VarIsInitializedOptraining/Adam/Variable_16*
_output_shapes
: 
]
VarIsInitializedOp_10VarIsInitializedOptraining/Adam/Variable_4*
_output_shapes
: 
]
VarIsInitializedOp_11VarIsInitializedOptraining/Adam/Variable_3*
_output_shapes
: 
]
VarIsInitializedOp_12VarIsInitializedOptraining/Adam/Variable_2*
_output_shapes
: 
^
VarIsInitializedOp_13VarIsInitializedOptraining/Adam/Variable_11*
_output_shapes
: 
]
VarIsInitializedOp_14VarIsInitializedOptraining/Adam/Variable_5*
_output_shapes
: 
T
VarIsInitializedOp_15VarIsInitializedOpAdam/iterations*
_output_shapes
: 
O
VarIsInitializedOp_16VarIsInitializedOp
dense/bias*
_output_shapes
: 
^
VarIsInitializedOp_17VarIsInitializedOptraining/Adam/Variable_12*
_output_shapes
: 
^
VarIsInitializedOp_18VarIsInitializedOptraining/Adam/Variable_13*
_output_shapes
: 
]
VarIsInitializedOp_19VarIsInitializedOptraining/Adam/Variable_8*
_output_shapes
: 
[
VarIsInitializedOp_20VarIsInitializedOptraining/Adam/Variable*
_output_shapes
: 
^
VarIsInitializedOp_21VarIsInitializedOptraining/Adam/Variable_14*
_output_shapes
: 
^
VarIsInitializedOp_22VarIsInitializedOptraining/Adam/Variable_10*
_output_shapes
: 
P
VarIsInitializedOp_23VarIsInitializedOpAdam/beta_2*
_output_shapes
: 
P
VarIsInitializedOp_24VarIsInitializedOpAdam/beta_1*
_output_shapes
: 
]
VarIsInitializedOp_25VarIsInitializedOptraining/Adam/Variable_7*
_output_shapes
: 
Q
VarIsInitializedOp_26VarIsInitializedOpdense_2/bias*
_output_shapes
: 
]
VarIsInitializedOp_27VarIsInitializedOptraining/Adam/Variable_9*
_output_shapes
: 
L
VarIsInitializedOp_28VarIsInitializedOpAdam/lr*
_output_shapes
: 
д
initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^dense/bias/Assign^dense/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign!^training/Adam/Variable_12/Assign!^training/Adam/Variable_13/Assign!^training/Adam/Variable_14/Assign!^training/Adam/Variable_15/Assign!^training/Adam/Variable_16/Assign!^training/Adam/Variable_17/Assign ^training/Adam/Variable_2/Assign ^training/Adam/Variable_3/Assign ^training/Adam/Variable_4/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign
$

group_depsNoOp^dense_2/BiasAdd
P

save/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0
Д
save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_703e40b48f024ff7aaecaa8507098a67/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
М
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
б
save/SaveV2/tensor_namesConst"/device:CPU:0*Е
valueыBшBAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_11Btraining/Adam/Variable_12Btraining/Adam/Variable_13Btraining/Adam/Variable_14Btraining/Adam/Variable_15Btraining/Adam/Variable_16Btraining/Adam/Variable_17Btraining/Adam/Variable_2Btraining/Adam/Variable_3Btraining/Adam/Variable_4Btraining/Adam/Variable_5Btraining/Adam/Variable_6Btraining/Adam/Variable_7Btraining/Adam/Variable_8Btraining/Adam/Variable_9*
dtype0*
_output_shapes
:
ђ
save/SaveV2/shape_and_slicesConst"/device:CPU:0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
”

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp#Adam/iterations/Read/ReadVariableOpAdam/lr/Read/ReadVariableOpdense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp*training/Adam/Variable/Read/ReadVariableOp,training/Adam/Variable_1/Read/ReadVariableOp-training/Adam/Variable_10/Read/ReadVariableOp-training/Adam/Variable_11/Read/ReadVariableOp-training/Adam/Variable_12/Read/ReadVariableOp-training/Adam/Variable_13/Read/ReadVariableOp-training/Adam/Variable_14/Read/ReadVariableOp-training/Adam/Variable_15/Read/ReadVariableOp-training/Adam/Variable_16/Read/ReadVariableOp-training/Adam/Variable_17/Read/ReadVariableOp,training/Adam/Variable_2/Read/ReadVariableOp,training/Adam/Variable_3/Read/ReadVariableOp,training/Adam/Variable_4/Read/ReadVariableOp,training/Adam/Variable_5/Read/ReadVariableOp,training/Adam/Variable_6/Read/ReadVariableOp,training/Adam/Variable_7/Read/ReadVariableOp,training/Adam/Variable_8/Read/ReadVariableOp,training/Adam/Variable_9/Read/ReadVariableOp"/device:CPU:0*+
dtypes!
2	
†
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
ђ
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
М
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
Й
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
_output_shapes
: *
T0
д
save/RestoreV2/tensor_namesConst"/device:CPU:0*Е
valueыBшBAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_11Btraining/Adam/Variable_12Btraining/Adam/Variable_13Btraining/Adam/Variable_14Btraining/Adam/Variable_15Btraining/Adam/Variable_16Btraining/Adam/Variable_17Btraining/Adam/Variable_2Btraining/Adam/Variable_3Btraining/Adam/Variable_4Btraining/Adam/Variable_5Btraining/Adam/Variable_6Btraining/Adam/Variable_7Btraining/Adam/Variable_8Btraining/Adam/Variable_9*
dtype0*
_output_shapes
:
ѓ
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ђ
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*И
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2	
N
save/Identity_1Identitysave/RestoreV2*
_output_shapes
:*
T0
T
save/AssignVariableOpAssignVariableOpAdam/beta_1save/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
V
save/AssignVariableOp_1AssignVariableOpAdam/beta_2save/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
_output_shapes
:*
T0
U
save/AssignVariableOp_2AssignVariableOp
Adam/decaysave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0	*
_output_shapes
:
Z
save/AssignVariableOp_3AssignVariableOpAdam/iterationssave/Identity_4*
dtype0	
P
save/Identity_5Identitysave/RestoreV2:4*
_output_shapes
:*
T0
R
save/AssignVariableOp_4AssignVariableOpAdam/lrsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
_output_shapes
:*
T0
U
save/AssignVariableOp_5AssignVariableOp
dense/biassave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
W
save/AssignVariableOp_6AssignVariableOpdense/kernelsave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
W
save/AssignVariableOp_7AssignVariableOpdense_1/biassave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
_output_shapes
:*
T0
Y
save/AssignVariableOp_8AssignVariableOpdense_1/kernelsave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
X
save/AssignVariableOp_9AssignVariableOpdense_2/biassave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
[
save/AssignVariableOp_10AssignVariableOpdense_2/kernelsave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
c
save/AssignVariableOp_11AssignVariableOptraining/Adam/Variablesave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
_output_shapes
:*
T0
e
save/AssignVariableOp_12AssignVariableOptraining/Adam/Variable_1save/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
f
save/AssignVariableOp_13AssignVariableOptraining/Adam/Variable_10save/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
f
save/AssignVariableOp_14AssignVariableOptraining/Adam/Variable_11save/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
f
save/AssignVariableOp_15AssignVariableOptraining/Adam/Variable_12save/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
_output_shapes
:*
T0
f
save/AssignVariableOp_16AssignVariableOptraining/Adam/Variable_13save/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
_output_shapes
:*
T0
f
save/AssignVariableOp_17AssignVariableOptraining/Adam/Variable_14save/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
_output_shapes
:*
T0
f
save/AssignVariableOp_18AssignVariableOptraining/Adam/Variable_15save/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
f
save/AssignVariableOp_19AssignVariableOptraining/Adam/Variable_16save/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
_output_shapes
:*
T0
f
save/AssignVariableOp_20AssignVariableOptraining/Adam/Variable_17save/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
T0*
_output_shapes
:
e
save/AssignVariableOp_21AssignVariableOptraining/Adam/Variable_2save/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
T0*
_output_shapes
:
e
save/AssignVariableOp_22AssignVariableOptraining/Adam/Variable_3save/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:23*
T0*
_output_shapes
:
e
save/AssignVariableOp_23AssignVariableOptraining/Adam/Variable_4save/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:24*
T0*
_output_shapes
:
e
save/AssignVariableOp_24AssignVariableOptraining/Adam/Variable_5save/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:25*
T0*
_output_shapes
:
e
save/AssignVariableOp_25AssignVariableOptraining/Adam/Variable_6save/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:26*
T0*
_output_shapes
:
e
save/AssignVariableOp_26AssignVariableOptraining/Adam/Variable_7save/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:27*
T0*
_output_shapes
:
e
save/AssignVariableOp_27AssignVariableOptraining/Adam/Variable_8save/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:28*
T0*
_output_shapes
:
e
save/AssignVariableOp_28AssignVariableOptraining/Adam/Variable_9save/Identity_29*
dtype0
Э
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"§
	variablesЦУ
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
А
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
А
dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08
Г
Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08
c
	Adam/lr:0Adam/lr/AssignAdam/lr/Read/ReadVariableOp:0(2#Adam/lr/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08
В
training/Adam/Variable:0training/Adam/Variable/Assign,training/Adam/Variable/Read/ReadVariableOp:0(2training/Adam/zeros:08
К
training/Adam/Variable_1:0training/Adam/Variable_1/Assign.training/Adam/Variable_1/Read/ReadVariableOp:0(2training/Adam/zeros_1:08
К
training/Adam/Variable_2:0training/Adam/Variable_2/Assign.training/Adam/Variable_2/Read/ReadVariableOp:0(2training/Adam/zeros_2:08
К
training/Adam/Variable_3:0training/Adam/Variable_3/Assign.training/Adam/Variable_3/Read/ReadVariableOp:0(2training/Adam/zeros_3:08
К
training/Adam/Variable_4:0training/Adam/Variable_4/Assign.training/Adam/Variable_4/Read/ReadVariableOp:0(2training/Adam/zeros_4:08
К
training/Adam/Variable_5:0training/Adam/Variable_5/Assign.training/Adam/Variable_5/Read/ReadVariableOp:0(2training/Adam/zeros_5:08
К
training/Adam/Variable_6:0training/Adam/Variable_6/Assign.training/Adam/Variable_6/Read/ReadVariableOp:0(2training/Adam/zeros_6:08
К
training/Adam/Variable_7:0training/Adam/Variable_7/Assign.training/Adam/Variable_7/Read/ReadVariableOp:0(2training/Adam/zeros_7:08
К
training/Adam/Variable_8:0training/Adam/Variable_8/Assign.training/Adam/Variable_8/Read/ReadVariableOp:0(2training/Adam/zeros_8:08
К
training/Adam/Variable_9:0training/Adam/Variable_9/Assign.training/Adam/Variable_9/Read/ReadVariableOp:0(2training/Adam/zeros_9:08
О
training/Adam/Variable_10:0 training/Adam/Variable_10/Assign/training/Adam/Variable_10/Read/ReadVariableOp:0(2training/Adam/zeros_10:08
О
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign/training/Adam/Variable_11/Read/ReadVariableOp:0(2training/Adam/zeros_11:08
О
training/Adam/Variable_12:0 training/Adam/Variable_12/Assign/training/Adam/Variable_12/Read/ReadVariableOp:0(2training/Adam/zeros_12:08
О
training/Adam/Variable_13:0 training/Adam/Variable_13/Assign/training/Adam/Variable_13/Read/ReadVariableOp:0(2training/Adam/zeros_13:08
О
training/Adam/Variable_14:0 training/Adam/Variable_14/Assign/training/Adam/Variable_14/Read/ReadVariableOp:0(2training/Adam/zeros_14:08
О
training/Adam/Variable_15:0 training/Adam/Variable_15/Assign/training/Adam/Variable_15/Read/ReadVariableOp:0(2training/Adam/zeros_15:08
О
training/Adam/Variable_16:0 training/Adam/Variable_16/Assign/training/Adam/Variable_16/Read/ReadVariableOp:0(2training/Adam/zeros_16:08
О
training/Adam/Variable_17:0 training/Adam/Variable_17/Assign/training/Adam/Variable_17/Read/ReadVariableOp:0(2training/Adam/zeros_17:08"Ѓ
trainable_variablesЦУ
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
А
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
А
dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08
Г
Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08
c
	Adam/lr:0Adam/lr/AssignAdam/lr/Read/ReadVariableOp:0(2#Adam/lr/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08
В
training/Adam/Variable:0training/Adam/Variable/Assign,training/Adam/Variable/Read/ReadVariableOp:0(2training/Adam/zeros:08
К
training/Adam/Variable_1:0training/Adam/Variable_1/Assign.training/Adam/Variable_1/Read/ReadVariableOp:0(2training/Adam/zeros_1:08
К
training/Adam/Variable_2:0training/Adam/Variable_2/Assign.training/Adam/Variable_2/Read/ReadVariableOp:0(2training/Adam/zeros_2:08
К
training/Adam/Variable_3:0training/Adam/Variable_3/Assign.training/Adam/Variable_3/Read/ReadVariableOp:0(2training/Adam/zeros_3:08
К
training/Adam/Variable_4:0training/Adam/Variable_4/Assign.training/Adam/Variable_4/Read/ReadVariableOp:0(2training/Adam/zeros_4:08
К
training/Adam/Variable_5:0training/Adam/Variable_5/Assign.training/Adam/Variable_5/Read/ReadVariableOp:0(2training/Adam/zeros_5:08
К
training/Adam/Variable_6:0training/Adam/Variable_6/Assign.training/Adam/Variable_6/Read/ReadVariableOp:0(2training/Adam/zeros_6:08
К
training/Adam/Variable_7:0training/Adam/Variable_7/Assign.training/Adam/Variable_7/Read/ReadVariableOp:0(2training/Adam/zeros_7:08
К
training/Adam/Variable_8:0training/Adam/Variable_8/Assign.training/Adam/Variable_8/Read/ReadVariableOp:0(2training/Adam/zeros_8:08
К
training/Adam/Variable_9:0training/Adam/Variable_9/Assign.training/Adam/Variable_9/Read/ReadVariableOp:0(2training/Adam/zeros_9:08
О
training/Adam/Variable_10:0 training/Adam/Variable_10/Assign/training/Adam/Variable_10/Read/ReadVariableOp:0(2training/Adam/zeros_10:08
О
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign/training/Adam/Variable_11/Read/ReadVariableOp:0(2training/Adam/zeros_11:08
О
training/Adam/Variable_12:0 training/Adam/Variable_12/Assign/training/Adam/Variable_12/Read/ReadVariableOp:0(2training/Adam/zeros_12:08
О
training/Adam/Variable_13:0 training/Adam/Variable_13/Assign/training/Adam/Variable_13/Read/ReadVariableOp:0(2training/Adam/zeros_13:08
О
training/Adam/Variable_14:0 training/Adam/Variable_14/Assign/training/Adam/Variable_14/Read/ReadVariableOp:0(2training/Adam/zeros_14:08
О
training/Adam/Variable_15:0 training/Adam/Variable_15/Assign/training/Adam/Variable_15/Read/ReadVariableOp:0(2training/Adam/zeros_15:08
О
training/Adam/Variable_16:0 training/Adam/Variable_16/Assign/training/Adam/Variable_16/Read/ReadVariableOp:0(2training/Adam/zeros_16:08
О
training/Adam/Variable_17:0 training/Adam/Variable_17/Assign/training/Adam/Variable_17/Read/ReadVariableOp:0(2training/Adam/zeros_17:08"±w
cond_context†wЭw
Џ
Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_textQloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 *џ
Dloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:0
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0¶
Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Ъ
Dloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar:0Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
лV
Sloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text_1Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0*ј'
iloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
iloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
jloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
jloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
Нloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
Нloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
Нloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
Жloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
Гloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
Иloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
Еloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
Бloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
Аloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
{loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
Еloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
Дloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
Дloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
~loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
vloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
tloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
wloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
yloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
ploss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0
Floss/dense_2_loss/broadcast_weights/assert_broadcastable/values/rank:0
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape:0
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/rank:0
Hloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape:0¶
Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0’
Hloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape:0Иloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Ѕ
Floss/dense_2_loss/broadcast_weights/assert_broadcastable/values/rank:0wloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0“
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape:0Жloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0ƒ
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/rank:0yloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:02н"
к"
kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textkloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *Э 
Нloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
Нloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
Нloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
Жloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
Иloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
Гloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
Иloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
Кloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
Еloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
Бloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
Аloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
{loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
Еloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
Дloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
Дloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
~loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
vloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
tloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape:0
Hloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape:0Т
Жloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Жloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Џ
kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0„
Hloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape:0Кloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1Ц
Иloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Иloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0‘
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape:0Иloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:12є

ґ

mloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*й
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
ploss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0Џ
kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0а
ploss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
Х
Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_textNloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 *Я
Yloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency:0
Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0†
Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Ј
Ploss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_text_1Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0*Ѕ
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
Vloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Vloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Vloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0:0
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1:0
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2:0
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4:0
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5:0
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7:0
[loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1:0
Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0
Dloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape:0
Hloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape:0Ґ
Hloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape:0Vloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0†
Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0°
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape:0Vloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0Ю
Dloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar:0Vloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0І
Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0*Ї
serving_default¶
*
input1 
	input_1:0€€€€€€€€€
*
input2 
	input_2:0€€€€€€€€€0
pctr(
dense_2/BiasAdd:0€€€€€€€€€tensorflow/serving/predict