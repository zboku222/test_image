FROM frelion/python3.11-alphine as build
WORKDIR /build
RUN pip install --no-cache-dir pyinstaller -i https://pypi.tuna.tsinghua.edu.cn/simple/ &&\
pip install --no-cache-dir pipreqs -i https://pypi.tuna.tsinghua.edu.cn/simple/ &&\
echo "https://mirror.tuna.tsinghua.edu.cn/alpine/latest-stable/main" > /etc/apk/repositories &&\
echo "https://mirror.tuna.tsinghua.edu.cn/alpine/latest-stable/community" >> /etc/apk/repositories &&\
apk add --no-cache binutils
CMD ["sh"]
