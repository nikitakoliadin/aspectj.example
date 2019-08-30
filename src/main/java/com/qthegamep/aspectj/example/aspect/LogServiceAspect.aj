package com.qthegamep.aspectj.example.aspect;

import org.aspectj.lang.Signature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public aspect LogServiceAspect {

    private static final Logger LOG = LoggerFactory.getLogger(LogServiceAspect.class);

    pointcut callServiceMethod(): call(* com.qthegamep.aspectj.example.service.*.*());

    before(): callServiceMethod() {
        Signature signature = thisJoinPoint.getSignature();
        LOG.info("BEFORE: {}", signature);
    }

    void around(): callServiceMethod() {
        proceed();
    }

    after(): callServiceMethod() {
        Signature signature = thisJoinPoint.getSignature();
        LOG.info("AFTER: {}", signature);
    }
}
