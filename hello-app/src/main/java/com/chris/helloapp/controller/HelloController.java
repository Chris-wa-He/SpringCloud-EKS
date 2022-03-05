package com.chris.helloapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.logging.Logger;

@RestController
public class HelloController {

    private final Logger logger = Logger.getLogger(getClass().getName());

    @Autowired
    private DiscoveryClient client;

    @RequestMapping(value = {"/helloAWS"}, method = {RequestMethod.GET})
    public String helloAws() {
//        ServiceInstance instance = this.client.getInstances();
//        this.logger.info("/helloAWS, host:" + instance.getHost() + " server_id:" + instance.getServiceId());
        this.logger.info("Call /helloAWS.");
        return "Hello! Spring Cloud on AWS!";
    }

}
