package com.qthegamep.aspectj.example;

import com.qthegamep.aspectj.example.service.TestService;
import com.qthegamep.aspectj.example.service.TestServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Application {

    private static final Logger LOG = LoggerFactory.getLogger(Application.class);

    public static void main(String[] args) {
        LOG.info("<<<<<<------------START------------>>>>>>");
        TestService testService = new TestServiceImpl();
        testService.testMethod();
        LOG.info("<<<<<<------------END------------>>>>>>");
    }
}
