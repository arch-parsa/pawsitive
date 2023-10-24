package io.parsaizme.tamara_state;

import io.vertx.core.AbstractVerticle;
import io.vertx.core.Promise;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import io.vertx.core.http.HttpHeaders;
import io.vertx.ext.web.Router;
import io.vertx.ext.web.handler.BodyHandler;

public class TrackTamara extends AbstractVerticle {

	private static final Logger logger = LoggerFactory.getLogger(TrackTamara.class);
	private static final int httpPort = Integer.parseInt(System.getenv().getOrDefault("HTTP_PORT", "8585"));

	@Override
	public void start(Promise<Void> startPromise) throws Exception {

		Router router = Router.router(vertx);
		logger.info("Router initiated...");

		router.route().handler(BodyHandler.create());
		logger.info("Enabling multipart form data parsing...");

		// ----TESTING APPLICATION : ROUND 1 ----
		router.route("/intro").handler(context -> {
			context.response()
				.putHeader("Content-Type", "text/html")
				.end("Boom...Tamara is up and running!");
			logger.info("Tamara is up and running...");
		});

		vertx.createHttpServer()
			.requestHandler(router)
			.listen(httpPort)
			.onSuccess(http -> {
				startPromise.complete();
				logger.info("Vert.x HTTP Server listening to VetDoc's agent requests on port http://localhost:{}", httpPort);
			})
			.onFailure(startPromise::fail);
	}
}
