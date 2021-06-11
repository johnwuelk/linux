#!/bin/bash
## 
bookNumber=346
totalPages=420
##
chapter=1
page=1
token="cwB0AHUAZABlAG4AdAAjACMAMAA3ADkAYgBlADgANABlAC0AYQA2ADAANAAtADQAZABkAGIALQA5ADkAMQAzAC0AMQAwADMAOAAwAGMAMAA4ADYAYgAwAGUAIwAjADYAMwA3ADEAOQA5ADUANQA3ADcAOQAxADgANgA2ADAANgA5AA"

#... i < $totalPages+1 ...
for ((i = 1 ; i < $totalPages+1 ; i++)); do
    sizeInfo=$(curl -I "https://cdn.edcolearning.ie/Image?bookId=book"$bookNumber"&chapterId=chapter"$chapter"&pageId=page"$page"&fileName=chapter"$chapter"-page"$page".jpg&token="$token"==&device=WebApp")
    
    if [[ $sizeInfo == *"Content-Length: 0"* ]]; then
        (( chapter++ ))
    fi
    curl "https://cdn.edcolearning.ie/Image?bookId=book"$bookNumber"&chapterId=chapter"$chapter"&pageId=page"$page"&fileName=chapter"$chapter"-page"$page".jpg&token="$token"==&device=WebApp" > "$page.jpeg"
    
    (( page++ ))
done
