import numpy as np 
import matplotlib.pyplot as plt  


class OrnsteinUhlenbeckActionNoise:
    '''
    Ornstein-Uhlenbeck process (Uhlenbeck & Ornstein, 1930) to generate
    temporally random process for exploration
    '''
    def __init__(self, action_dim, mu = 0, theta = 0.15, sigma = 0.2,dt = 1):
        self.action_dim = action_dim
        self.mu = mu
        self.theta = theta
        self.sigma = sigma
        self.dt = dt 
        self.X = np.ones(self.action_dim) * self.mu

    def reset(self):
        self.X = np.ones(self.action_dim) * self.mu

    def sample(self):
        dx = self.theta * (self.mu - self.X) * self.dt
        dx = dx + self.sigma * np.random.randn(len(self.X))
        self.X = self.X + dx
        return self.X

def main():
    ou_noise = OrnsteinUhlenbeckActionNoise(action_dim = 2)
    plt.figure("data")
    y = []
    t = np.linspace(0,1000,1000)
    for i in t:
        y.append(ou_noise.sample())
    plt.plot(t,y)
    plt.show()
if __name__=="__main__":
    main()