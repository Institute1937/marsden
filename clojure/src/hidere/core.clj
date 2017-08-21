(ns hidere.core
  (:use [org.httpkit.server] [clojure.data.json :only [json-str]])
  (:gen-class))

(defn say-hello [request]
  {:status 200
   :headers {"Content-Type" "application/json"}
   :body    (json-str {"message" "and I'm from Clojure"})})



(use 'ring.adapter.jetty)

(run-jetty say-hello {:port 3009})