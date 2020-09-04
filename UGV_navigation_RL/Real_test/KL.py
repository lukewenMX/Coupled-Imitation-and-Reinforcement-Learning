#! usr/bin/env python

"""
Coded by Luke wen on 16th Apr 2019.
This program is aiming to calculate the KL devergence between two Multivariables Guassian Distributions
"""
import numpy as np 



def KL(a1,b1,a2,b2,d):
    """Where the a1,a2 are the mean vectors, b1, b2 are the covariance matries and d is the number of dimensions"""
    # the difference between the two mean vectors
    a = a2 - a1
    m = 1e-6
    b3 = b2 

    # the matrix multiplication results
    middle = np.dot(a,np.linalg.pinv(b3))
    # print(middle.shape)
    # print(np.linalg.det(b1)) #0
    # print(np.linalg.det(b2)) #0
    part_1 = np.log((np.linalg.det(b2)+1e-5)/(np.linalg.det(b1)+1e-5)) - d 
    # print(part_1) #()
    part_2 = np.trace(np.dot(np.linalg.pinv(b3),b1.T)) #()
    part_3 = np.dot(middle,a.T)
    
    # print("part2" , part_2) #()
    # print("part3" + str(part_3) )#()
    
    kl = 1.0 / 2.0 * part_1 + part_2 + part_3
    print("kl is " , kl)
    # kl = 1.0/2.0 * (np.log(np.linalg.det(b2)/np.linalg.det(b1)) - d + np.trace(np.dot(np.linalg.inv(b3),b1)) + np.dot(middle,a) )
    return kl