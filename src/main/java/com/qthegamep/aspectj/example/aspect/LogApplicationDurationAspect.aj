package com.qthegamep.aspectj.example.aspect;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.time.LocalDateTime;

import static java.time.temporal.ChronoUnit.*;

public aspect LogApplicationDurationAspect {

    private static final Logger LOG = LoggerFactory.getLogger(LogApplicationDurationAspect.class);

    pointcut main(): execution(static void com.qthegamep.aspectj.example.Application.main(..));

    before(): main() {
        LOG.info("<<<<<<------------START------------>>>>>>");
    }

    void around(): main() {
        LocalDateTime startDateTime = LocalDateTime.now();
        proceed();
        LocalDateTime endDateTime = LocalDateTime.now();
        LOG.warn("END DATE TIME: {} MILLISECONDS: {}", endDateTime, MILLIS.between(startDateTime, endDateTime));
    }

    after(): main() {
        LOG.info("<<<<<<------------END------------>>>>>>");
    }
}
