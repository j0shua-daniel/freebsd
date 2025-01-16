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

## FreeBSD Install guide:

1. Add a Hostname:

![hostname](https://github.com/j0shua-daniel/images/blob/main/hostname.png?raw=true)

2. Don't select to setup network with ipv6!

![ipv6](https://github.com/j0shua-daniel/images/blob/main/ipv6.png?raw=true)

3. Recommended Selection:

![dist-select](https://github.com/j0shua-daniel/images/blob/main/distselect.png?raw=true)

4. Recommended Selection:

![select](https://github.com/j0shua-daniel/images/blob/main/select.png?raw=true)

5. How to setup a user:

![user-setup](https://github.com/j0shua-daniel/images/blob/main/user.png?raw=true)

## pkg Error:

If you see this error:

![error](https://github.com/j0shua-daniel/images/blob/main/pkg-error.png?raw=true)

Then do the following:

`ee /etc/pkg/FreeBSD.conf` 

![vi](https://github.com/j0shua-daniel/images/blob/main/vi.png?raw=true)

You should see this:

![this](https://github.com/j0shua-daniel/images/blob/main/default-file.png?raw=true)

Just comment all the lines:

![comment](https://github.com/j0shua-daniel/images/blob/main/pkg-after.png?raw=true)

Do `ctrl+c` and then type `exit` to save and leave ee.

Then just run `pkg`, this will install pkg. 

Once `pkg` is installed go back to `/etc/pkg/FreeBSD.conf` and uncomment the lines we commented.

Now you can install anything you want! 

`pkg install pkg-name`
