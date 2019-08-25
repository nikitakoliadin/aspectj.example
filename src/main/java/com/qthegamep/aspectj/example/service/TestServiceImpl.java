package com.qthegamep.aspectj.example.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class TestServiceImpl implements TestService {

    private static final Logger LOG = LoggerFactory.getLogger(TestServiceImpl.class);

    @Override
    public void testMethod() {
        LOG.warn("INSIDE TEST SERVICE METHOD!");
    }
}
