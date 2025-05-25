# hello_python.py

def say_hello(name):
    print(f"Hello, {name}!")
    return

def add_numbers(a, b):
    return a + b

def count_primes_py(n):
    count = 0
    for i in range(2, n + 1):
        is_prime = True
        for j in range(2, int(i ** 0.5) + 1):
            if i % j == 0:
                is_prime = False
                break
        if is_prime:
            count += 1
    return count

def fibonacci_py(n):
    if n <= 1:
        return n
    return fibonacci_py(n - 1) + fibonacci_py(n - 2)