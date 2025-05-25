# hello_cython.pyx

def say_hello(name):
    print(f"Hello, {name}!")
    return

def add_numbers(int a, int b) -> int:
    return a + b

def count_primes_cy(int n):
    cdef int count = 0
    cdef int i, j
    cdef bint is_prime
    for i in range(2, n + 1):
        is_prime = True
        for j in range(2, int(i ** 0.5) + 1):
            if i % j == 0:
                is_prime = False
                break
        if is_prime:
            count += 1
    return count

cpdef int fibonacci_cy(int n):
    if n <= 1:
        return n
    return fibonacci_cy(n - 1) + fibonacci_cy(n - 2)