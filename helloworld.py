import time
import datetime

def print_helloworld():
    print("Hello World")


def loop_and_wait():
    while True:
        currentDT = datetime.datetime.now()
        print(str(currentDT))
        print_helloworld()
        time.sleep(5)


if __name__ == '__main__':
    loop_and_wait()
