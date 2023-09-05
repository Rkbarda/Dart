import requests
from bs4 import BeautifulSoup

url = "https://www.google.com/search?q=ind+vs+nepal&rlz=1C1CHBD_enIN1064IN1064&oq=ind+vs+nep&aqs=chrome.0.69i59j0i10i131i433i512j69i57j0i10i131i433i512l2j0i3l5.4095j1j7&sourceid=chrome&ie=UTF-8#sie=m;/g/11v5x6dwrg;5;/m/02k52y;dt;fp;1;;;"
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
