import numpy as np
input_signals =[] 
weights =[]

''' Synapses -  Mathematically, the synapse is represented as a weight vector
 empty list of weights and input signals'''


signals_v =(int(input('type number of input signals'))) 
for i in range(0, signals_v): # for each input signal we will store a weight
    signals_list = (int(input('type a value for input signal')))
    weights_list = (float(input('type a corresponding weight ..')))
    input_signals.append(signals_list)
    weights.append(weights_list) # append values

    np_signals = np.array(input_signals)
    np_weights = np.array(weights)
print(input_signals)
print(weights)
def percep_sum(e,w):
  return e.dot(w) # dot product
s = percep_sum(np_signals,np_weights)# parameters = input signal and weight
def stepfunction(percep_sum):
    if (percep_sum >=1):
        return 1
    return 0
r = stepfunction(s)
print(r)