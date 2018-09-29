package com.arun.controller;

import com.arun.pojo.SimpleMessageResponse;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by sumit on 30/09/18.
 */
@RestController
@RequestMapping("healthcheck")
public class HealthcheckController {
    @RequestMapping(method = RequestMethod.GET, value = "")
    public ResponseEntity<?> getHealthCheck() {
        return new ResponseEntity<>(new SimpleMessageResponse("Healthy!!! TedApp service is running"), HttpStatus.OK);
    }
}
