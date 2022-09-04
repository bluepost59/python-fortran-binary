import struct

def main():
    with open("float_array.dat","rb") as f:
        for i in range(100):
            x = struct.unpack('@d',f.read(8))[0]
            print(x)

        

if __name__=="__main__":
    main()