(defproject hidere "0.1.0-SNAPSHOT"
  :description "FIXME: write description"
  :url "http://example.com/FIXMEYES"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [[org.clojure/clojure "1.8.0"]
           [ring/ring-core "1.5.0"]
           [ring-cors "0.1.7"]
           [http-kit "2.2.0"]
           [ring/ring-jetty-adapter "1.5.0"]
           [org.clojure/data.json "0.2.6"]]
  :main ^:skip-aot hidere.core
  :target-path "target/%s"
  :profiles {:uberjar {:aot :all}})
