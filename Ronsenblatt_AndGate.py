import numpy as np
input_signals = np.array([[0,0],[0,1],[1,0],[1,1]])
#                         |     |     |     |
#                         |     |     |     |
# AND operator            |     |     |     |
#  pred attributes        |     |     |     |
#  x1   x2 class          |     |     |     |
#  0    0    0 -----------|     |     |     |
#  0    1    0------------------|     |     |
#  1    0    0------------------------|     |
#  1    1    1   >> True <<-----------------|
#            |--------------           
#                          |
#                          |
output_signals = np.array([0,0,0,1]) # Logical And opertor
weights = np.array([0.0,0.0]) # Synapses -  Mathematically, the synapse is represented as a weight vector
learning_rate = 0.1
def stepfunction(percep_sum):
    if (percep_sum >=1):
        return 1
    return 0
def outputsum(register):
    s = register.dot(weights)
    return stepfunction(s)
def trainning():
   t_error = 1
   while (t_error !=0):
       t_error = 0
       for i in range(len(output_signals)):
           calculated_outputs =outputsum(np.array(input_signals[i]))
           g_error = abs(output_signals[i] - calculated_outputs)
           t_error += g_error
           for j in range(len(weights)):
               weights[j]= weights[j] + (learning_rate * input_signals [i][j] * g_error)
               print('Updated weights :' + str(weights[j]) )
           print('Errors :' + str(t_error) )
trainning()
print('ANN Trained')
print(outputsum(input_signals[0]))
print(outputsum(input_signals[1]))
print(outputsum(input_signals[2]))
print(outputsum(input_signals[3]))