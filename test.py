from requests import get

myip = get('https://l2.io/ip').text
print ('My IP address is: ', myip)
my_file = open("Find ip.html", "w")
text_list = ["<html>", "<body>"]
text_list.append(myip)
text_list.append("</body>")
text_list.append("</html>")
my_file.writelines(text_list)
my_file.close()
