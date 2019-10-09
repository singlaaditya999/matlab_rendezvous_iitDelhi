# -*- coding: utf-8 -*-
"""
Created on Sun Mar  3 03:28:09 2019

@author: DELL
"""
print("Hello")

def trapezoidal(f, a, x, n):
    h = (x-a)/float(n)
    I = 0.5*f(a)
    for i in range(1, n):
        I += f(a + i*h)
    I += 0.5*f(x)
    I *= h
    return I

class Integral(object):
    def __init__(self, f, a, n=100):
        self.f, self.a, self.n = f, a, n

    def __call__(self, x):
        return trapezoidal(self.f, self.a, x, self.n)
    
value = trapezoidal(x**2*exp(−x)*sin(x), 1, 3, 200)
print (value)