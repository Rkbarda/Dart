import requests
from bs4 import BeautifulSoup

url = "https://himachal.nic.in/en-IN/holidays.html"
response = requests.get(url)

if response.status_code == 200:
    html = response.text
else:
    print("Failed to retrieve the web page.")

soup = BeautifulSoup(html, "html.parser")
# Example: Find all <a> tags with a specific class
links = soup.find_all
table = soup.find("table",id="outerTable")


print(soup)

# Process and print the extracted data as needed.
