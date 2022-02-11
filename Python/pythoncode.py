import os

test=os.environ['TEST']
if test=="{'dummy_test':{'username':'un','password':'pass'},'dummy':{'username':'na','password':'pw'}}":
  print("y",len(test))
else:
  print("n",len(test))
