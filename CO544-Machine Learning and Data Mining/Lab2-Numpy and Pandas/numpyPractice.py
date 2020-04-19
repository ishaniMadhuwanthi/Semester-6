import numpy as np

a = np.array([1, 2, 3])
a.dtype
matrix = np.array([np.arange(3), [i for i in range(1, 4)], [6, 7, 8]])

print(matrix)
print(matrix[1, 0])
print(matrix[0])
print(matrix[1:3])
print(matrix[])
print(matrix[1:])
print(matrix[1:100])
print(matrix[:])
print(matrix[1:,:2])
print(matrix [:2, 1:] )
print(matrix.ravel())
print(matrix[:,1].copy())
print(matrix[1].tolist())
print(matrix.reshape(-1))
print(np.sqrt(matrix))
print(np.exp(matrix))
print(np.min(matrix))
print(np.max(matrix, axis=1))
print(np.min(np.maximum(np.random.randn(4),np.random.randn(4))))
print(np.mean(matrix))
print(np.mean(matrix, axis=0))
print(np.sum(matrix))
print(np.invert(matrix))
print(np.random.randn(5))
print(np.trace(matrix))







 
