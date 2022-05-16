import docker

client = docker.DockerClient()
container = client.containers.get("ubuntu20.04")
ip_add = container.attrs['NetworkSettings']['IPAddress']

my_file = open("Find ip.html", "w")
text_list = ["<html>", "<body>"]
text_list.append(ip_add)
text_list.append("</body>")
text_list.append("</html>")
my_file.writelines(text_list)
my_file.close()
