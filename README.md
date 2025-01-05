# Install

Run the following:
```
curl -o setup.sh https://raw.githubusercontent.com/j0shua-daniel/freebsd/refs/heads/main/setup.sh
chmod +x setup.sh
# RUN AS ROOT:
./setup.sh
```
To setup sudo open `visudo` and add the line `%wheel ALL=(ALL) ALL`.

To setup xorg run `sudo pkg install xorg-minimal` and install any WM or DE you want.

## 10 Reasons why FreeBSD is better than linux:

1. FreeBSD's pkg manager is amazing, yes maybe not as big as [nixpkgs](https://nixos.org/nixos/packages.html) but it sure is good!
2. Linux focuses more on developing more features, while FreeBSD focuses more on making the system better using the same packages.
3. FreeBSD is fast!
4. FreeBSD follows the UNIX Philosophy closer than linux.
5. FreeBSD is more minimal than linux.
6. FreeBSD is stable while having newer packages than some more unstable linux distros.
7. FreeBSD has more options, such as, having wmii while other modern linux distros do not have it in their repos.
8. FreeBSD userland allows more control than linux.
9. Every part of FreeBSD is made by the same FreeBSD company, unlike linux which has many communities and companies making software for the same distro.
10. FreeBSD tends to have less security issues as linux.

Source: Personal experience :)

## FreeBSD Install guide:

1. Add a Hostname:

![hostname](https://github.com/j0shua-daniel/images/blob/main/hostname.png?raw=true)

2. Don't select to setup network with ipv6!

![ipv6](https://github.com/j0shua-daniel/images/blob/main/ipv6.png?raw=true)

3. Choose default ZFS file system:

![zfs](https://github.com/j0shua-daniel/images/blob/main/zfs.png?raw=true)

4. Recommended Selection:

![dist-select](https://github.com/j0shua-daniel/images/blob/main/distselect.png?raw=true)

5. Recommended Selection:

![select](https://github.com/j0shua-daniel/images/blob/main/select.png?raw=true)

6. How to setup a user:

![user-setup](https://github.com/j0shua-daniel/images/blob/main/user.png?raw=true)

## pkg Error:

If you see this error:

![error](https://github.com/j0shua-daniel/images/blob/main/pkg-error.png?raw=true)

Then do the following:

`vi /etc/pkg/FreeBSD.conf`

![vi](https://github.com/j0shua-daniel/images/blob/main/vi.png?raw=true)

You should see this:

![this](https://github.com/j0shua-daniel/images/blob/main/default-file.png?raw=true)

Just comment all the lines:

![comment](https://github.com/j0shua-daniel/images/blob/main/pkg-after.png?raw=true)

Then just run `pkg`, this will install pkg. 

Once `pkg` is installed go back to `/etc/pkg/FreeBSD.conf` and uncomment the lines we commented.

Now you can install anything you want! 

`pkg install pkg-name`
