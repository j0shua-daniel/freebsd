# Install

Run the following:
```
git clone https://github.com/j0shua-daniel/freebsd
chmod +x freebsd/setup.sh
./freebsd/setup.sh
```

## What this script does:
1. Install GPU divers.
2. Enable doas for wheel group.
3. Sets clock speed to be adaptive.

[FreeBSD install guide.](https://github.com/j0shua-daniel/freebsd-guide)

## pkg Error:

If you see this error:

![error](https://github.com/j0shua-daniel/images/blob/main/pkg-error.png?raw=true)

Then do the following:

`ee /etc/pkg/FreeBSD.conf` 

Just comment all the lines:

![comment](https://github.com/j0shua-daniel/images/blob/main/pkg-after.png?raw=true)

Do `ctrl+c` and then type `exit` to save and leave ee.

Then just run `pkg`, this will install pkg. 

Once `pkg` is installed go back to `/etc/pkg/FreeBSD.conf` and uncomment the lines we commented.

Now you can install anything you want! 

`pkg install pkg-name`
