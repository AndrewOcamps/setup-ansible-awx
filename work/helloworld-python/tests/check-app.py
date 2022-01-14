import unittest
from app import hello_world  

class TestCheck(unittest.TestCase):
    def check(self):
        hello_world()


if __name__ == '__main__':
  unittest.main()

