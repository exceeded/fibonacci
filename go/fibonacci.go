// You can run this file at https://play.golang.org/p/ScdzgFleBh
package main

import (
	"fmt"
)

// fibo returns a list of the n first integers in the Fibonacci sequence
func fibo(n int) ([]int, error) {
	if n < 0 {
		return nil, fmt.Errorf("n can't be below 0")
	}
	if n == 0 {
		return nil, nil
	}
	if n == 1 {
		return []int{1}, nil
	}
	xs := []int{1, 1}
	for i := 2; i < n; i++ {
		xs = append(xs, xs[i-1]+xs[i-2])
	}
	return xs, nil
}

func main() {
	xs, err := fibo(20)
	if err != nil {
		fmt.Println(err)
		return
	}
	for i, x := range xs {
		fmt.Printf("%02d: %d\n", i+1, x)
	}

}
