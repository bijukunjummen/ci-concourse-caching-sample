package org.bk.samples.cisample

import org.springframework.boot.SpringApplication
import org.springframework.boot.autoconfigure.SpringBootApplication

@SpringBootApplication
class CiSampleApplication

fun main(args: Array<String>) {
    SpringApplication.run(CiSampleApplication::class.java, *args)
}
