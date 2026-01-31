## prime
# prime=[1]
# for i in range(2,100):
#     for j in range(2,i):
#         if i%j == 0:
#             break
#     else:
#         prime.append(i)
#
# print(prime)

## 2nd largest
# val=[100,25,50,75,125,150,10,5,15,0]
# dummy=0
# for i in range(0,len(val)):
#     for j in range(i+1,len(val)):
#         if val[i]>val[j]:
#             dummy=val[j]
#             val[j]=val[i]
#             val[i]=dummy
#
# print(val)

## word frequency
#
# sentence="""
# Knowing how to write a paragraphs is incredibly important.
# It’s a basic aspect of writing, and it is something that
# everyone should know how to do. There is a specific structure
# that you have to follow when you’re writing a paragraph.
# This structure helps make it easier for the reader to understand
# what is going on. Through writing good paragraphs, a person
# can communicate a lot better through their writing.
# """
# sentence=sentence.replace("\n","")
# sentence=sentence.replace(".","")
# sentence=sentence.replace(",","")
# val=sentence.split(" ")
# print(val)
# dict={"one":"1","two":2}
# x={each : val.count(each) for each in val}
# print(x)

## updating the json file
#
# import json
# with open("simple.json","r") as fp:
#     val=fp.read()
# print(val)
# val2=val
# print(type(val))
# dictor=json.loads(val)
# print(dictor,type(dictor))
# dictor["how"]=100
# dictor["Knowing"]=250
# val=json.dumps(dictor)
# with open("simple.json","w") as fp:
#     fp.write(val)
# print(val2)

one=[1,2,3,4,5]
two=[1,2]
three=[1,2,3]
four=[1,2,3,4]
dummy2=[0,0,0,0,0]
dummy=one+two+three+four
print(dummy)
for each in range(0,len(one)):
    dummy2[each] = dummy2[each] + one[each]
    if each < len(two):
        dummy2[each]=dummy2[each]+two[each]
    if each < len(three):
        dummy2[each]=dummy2[each]+three[each]
    if each < len(four):
        dummy2[each]=dummy2[each]+four[each]
print(dummy2)