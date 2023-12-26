import matplotlib.pyplot as plt

''' Elliptic curves'''

def ec_aps(lmfdb_label, primes_up_to = 100000):
    # construct elliptic curve from its LMFDB label
    # (https://www.lmfdb.org/EllipticCurve/Q/)
    E = EllipticCurve(lmfdb_label)

    # return the list of aps for primes up to a bound
    return E.aplist(primes_up_to)
    
def ec_histogram(label='11a1'):
    aps_histogram(ec_aps(label))

''' Newforms of weight k >= 2'''

def modform_aps(N=11, k=2, num_primes = 5000):
    #sage does not support weight one newform computations
    assert k >= 2

    newforms = Newforms(N, k)
    assert len(newforms) != 0

    # since we just want an example, we take
    # the first newform in the list
    f = newforms[0]
    return [f.coefficient(p) for p in primes_first_n(num_primes)]

def modform_histogram():
    aps_histogram(modform_aps())

''' Plotting '''

def aps_histogram(aps, B=85):
    # normalize the aps 
    #normalized_aps = [RR(ap) / RR(sqrt(p)) for ap, p in zip(aps, primes_first_n(len(aps)))]

    # create a histogram from the given data with B bins
    plt.hist(aps, bins=B)
    # display the histogram
    plt.show(block=False)
    # save the histogram to a file
    plt.savefig("ec.png")
    # dumb hack to keep the display window open
    plt.show()


''''-------------------------------------------------------------------------'''

# this is the function that gets run when you 
# type `sage sato-tate.sage`
if __name__ == "__main__":
    ec_histogram()
