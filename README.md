# yt2txt

This will download the chat log from a YouTube video via
[chat-downloader][cd].

## Installation

For native usage you need [Python (in version 3)][python].  
Then you can use [`pip`][pip] to install some packages:

```bash
pip install --no-cache-dir --upgrade chat-downloader youtube_dl
```

If you use [`docker`][docker], you can just pull the provided image:

```bash
docker pull ghcr.io/tohn/yt2txt
```

Otherwise, clone the repo and build the image yourself:

```bash
git clone https://github.com/tohn/yt2txt.git
docker build -t yt2txt .
```

## Usage

You can provide one or multiple YouTube video ids to `yt2txt.sh`.

Some examples (native, docker build, docker pull):

```bash
# native
./yt2txt.sh PW26QYhziW4
# docker build
docker run --rm -v $(pwd):/opt -i yt2txt bash -c 'yt2txt.sh PW26QYhziW4'
# docker pull
docker run --rm -v $(pwd):/opt -i ghcr.io/tohn/yt2txt bash -c 'yt2txt.sh PW26QYhziW4'
```

If you have more then one video, either list them as parameters or write
them into a file and use the file as input:

```bash
$ cat vegan_ist_ungesund.txt
PW26QYhziW4
9VJbRATdkfs
L4y052RmaSM
```

```bash
# native
./yt2txt.sh PW26QYhziW4 9VJbRATdkfs L4y052RmaSM
./yt2txt.sh <vegan_ist_ungesund.txt
# docker build
docker run --rm -v $(pwd):/opt -i yt2txt bash -c 'yt2txt.sh PW26QYhziW4 9VJbRATdkfs L4y052RmaSM'
docker run --rm -v $(pwd):/opt -i yt2txt yt2txt.sh <vegan_ist_ungesund.txt
# docker pull
docker run --rm -v $(pwd):/opt -i ghcr.io/tohn/yt2txt bash -c 'yt2txt.sh PW26QYhziW4 9VJbRATdkfs L4y052RmaSM'
docker run --rm -v $(pwd):/opt -i ghcr.io/tohn/yt2txt yt2txt.sh <vegan_ist_ungesund.txt
```

[cd]: https://github.com/xenova/chat-downloader
[python]: https://www.python.org
[pip]: https://pypi.org/project/pip/
[docker]: https://www.docker.com
