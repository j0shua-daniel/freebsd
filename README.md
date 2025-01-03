# Install
MADE FOR AMD GPUS!

Run the following:
```
curl -o setup.sh https://raw.githubusercontent.com/j0shua-daniel/freebsd/refs/heads/main/setup.sh
chmod +x setup.sh
# RUN AS ROOT:
./setup.sh
```
To setup sudo open `visudo` and find the line %wheel ALL=(ALL) ALL and un comment it.

To setup xorg run `sudo pkg install xorg-minimal` and install any WM or DE you want.

## 10 Reasons why FreeBSD is better than linux:

1. FreeBSD's pkg manager is amazing, yes maybe not as big as [nixpkgs](https://nixos.org/nixos/packages.html) but it sure is good!
2. Linux focuses more on developing more features, while FreeBSD focuses more on making the system better using the same packages.
3. FreeBSD is fast!
4. FreeBSD follows the UNIX Philosophy closer than linux.
5. FreeBSD is more minimal than linux.
6. FreeBSD is stable while having newer packages some more unstable linux distros.
7. FreeBSD has more options, such as, having wmii while other modern linux distros do not have it in their repos.
8. FreeBSD userland allows more control than linux.
9. Every part of FreeBSD is made by the same FreeBSD company, unlike linux which has many communities and companies making software for the same distro.
10. FreeBSD tends to have less security issues as linux.

Source: Personal experience :)
