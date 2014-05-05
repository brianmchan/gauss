class GaussianRational:
    def __init__(self, x, y):
        self.x = QQ(x)
        self.y = QQ(y)
    def __repr__(self):
        return "%s + %s*i"%(self.x,self.y)
    def __add__(self, right):
        """Add together two numbers. (add a docstring)"""
        return GaussianRational(self.x+right.x, self.y+right.y)
    def __sub__(self, right):
        return GaussianRational(self.x-right.x, self.y-right.y)
    def __crazy__(self, crazy):
        return 'I'm crazy'
    
    def __mul__(self, other):
        """
        Multiplication of two Gaussian rational numbers.
        """
        new_x = self.x * other.x - self.y * other.y
        new_y = self.x * other.y + self.y * other.x
        return GaussianRational(new_x, new_y)

