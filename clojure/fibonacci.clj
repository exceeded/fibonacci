(ns fibonacci)

(defn fibo-seq
  "Infinite Fibonacci sequence"
  []
  (->> [1N 1N]               ; We start with the [1 1] pair. 
    (iterate (fn [[a b]]     ; -> ([1 1] [1 2] [2 3] [3 5] [5 8] ...)
               [b (+ a b)])) ; 
    (map first)))            ; -> ( 1     1     2     3     5    ...)

(defn fibo
  "Returns the first n Fibonacci numbers"
  [n]
  (take n (fibo-seq)))

(defn fibo-below
  "Returns all Fibonacci numbers below x"
  [x]
  (take-while #(< % x) (fibo-seq)))

(defn procedural-fibo
  "Prints the first n Fibonacci numbers in a procedural style"
  [n]
  (loop [i 0, a 1N, b 1N]
    (when (< i n)
      (println a)
      (recur (inc i) b (+ a b)))))
