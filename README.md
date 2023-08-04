# chronyc-sources-tracking-ms
Bash script to output data from 'chronyc sources', 'chronyc tracking', and convert the data in seconds from the latter to milliseconds (except for the update interval).

## Output Example
```bash
MS Name/IP address         Stratum Poll Reach LastRx Last sample               
===============================================================================
^+ a.st1.ntp.br                  1   8   377    15   +365us[ +365us] +/-   11ms
^- 201.49.148.135                2   8   377   144   -796us[ -796us] +/-   29ms
^+ c.st1.ntp.br                  1   8   377   142  -2714us[-2714us] +/-   12ms
^* gps.nu.ntp.br                 1   8   377   146  -3148us[-3177us] +/-   13ms
^+ a.ntp.br                      2   8   377   143  +1247us[+1247us] +/-   12ms
^- b.ntp.br                      2   8   377   143  +4914us[+4914us] +/-   58ms
^- c.ntp.br                      2   7   377    72    +12us[  +12us] +/-   37ms
===============================================================================
Reference ID    : 442FCA8C (gps.nu.ntp.br)
Stratum         : 2
Ref time (UTC)  : Fri Aug 04 14:14:53 2023
System time     : 0.196795 milliseconds slow of NTP time
Last offset     : -0.028941 milliseconds
RMS offset      : 0.198715 milliseconds
Frequency       : 10.069 ppm slow
Residual freq   : +0.000 ppm
Skew            : 0.540 ppm
Root delay      : 16.5934 milliseconds
Root dispersion : 0.909772 milliseconds
Update interval : 259.0 seconds
Leap status     : Normal
