# AWS Simple Icons for dia
This provides Dia AWS Simple Icons shapes.

Some other people like https://github.com/kazuhisya/dia-aws-simple-icons made some scripts but none seemed to work properly. My script is a lot simpler. Granted, it simply throws away icons with spaces. There's only 2 right now, and i don't need 'em anyway.
Just do it already. I just want some icons...

## System Requirements

- dia
- ImageMagick (`convert` command)
- ruby (`rexml/document`, it is included in the standard Ruby distribution.)

## Usage
```bash
$ git clone https://github.com/pieterlange/aws-dia-shapes
$ cd aws-dia-shapes
$ ./doit.sh
~~ optionally if you aborted ~~
$ cat ./.outputs/shapes.sheet  > ~/.dia/sheets/AWS.sheet
$ cp ./.outputs/shapes/* ~/.dia/shapes/
```

## Licence

- AWS Simple Icons
    - Not specified
    - See Also: https://aws.amazon.com/jp/blogs/aws/introducing-aws-simple-icons-for-your-architecture-diagrams/

- Makefile
    - Please observe the following
    - From: https://github.com/cipriancraciun/mosaic-blueprints/blob/master/dia-shapes/aws/makefile
