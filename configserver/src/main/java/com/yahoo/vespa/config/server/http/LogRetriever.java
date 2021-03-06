// Copyright 2018 Yahoo Holdings. Licensed under the terms of the Apache 2.0 license. See LICENSE in the project root.
package com.yahoo.vespa.config.server.http;

import ai.vespa.util.http.VespaHttpClientBuilder;
import com.yahoo.container.jdisc.HttpResponse;
import com.yahoo.yolean.Exceptions;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;

import java.io.IOException;

/**
 * @author olaaun
 */
public class LogRetriever {

    private final HttpClient httpClient = VespaHttpClientBuilder.create().build();

    public HttpResponse getLogs(String logServerHostname) {
        HttpGet get = new HttpGet(logServerHostname);
        try {
            return new ProxyResponse(httpClient.execute(get));
        } catch (IOException e) {
            return HttpErrorResponse.internalServerError("Failed to get logs: " + Exceptions.toMessageString(e));
        }
    }

}
