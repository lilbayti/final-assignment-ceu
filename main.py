url = 'https://ceu-economics-and-business.github.io/ECBS-5146-Different-Shapes-of-Data/artifacts/intro/birdstrikes_small.csv'

#using slicing, string split and list indexing to fill the following 

file_name = url.split('/')[-1]


host_name = url.split('://')[1].split("/")[0]

#using string composition to construct 'htpp://ceu-economics-and-business.github.io/birdstrikes_small.csv'
new_url = f"http://{host_name}/{file_name}"
print(new_url)
