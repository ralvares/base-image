# ubi8 Repository

## Running openscap 

### Install openscap 
```
dnf install openscap-utils openscap-scanner bzip2 scap-security-guide
```

###  Viewing profiles for configuration compliance
```
ls /usr/share/xml/scap/ssg/content/

ssg-firefox-cpe-dictionary.xml  ssg-rhel6-ocil.xml
ssg-firefox-cpe-oval.xml        ssg-rhel6-oval.xml
...
ssg-rhel6-ds-1.2.xml          ssg-rhel8-oval.xml
ssg-rhel8-ds.xml              ssg-rhel8-xccdf.xml
...
```
### Download the rhel8-oval 
```
wget -O - https://www.redhat.com/security/data/oval/v2/RHEL8/rhel-8.oval.xml.bz2 | bzip2 --decompress > rhel-8.oval.xml
```

### Check for vulnerabilities
```
oscap-podman registry.access.redhat.com/ubi8/ubi-minimal oval eval --report vulnerability.html rhel-8.oval.xml
```

```
open vulnerability.html
```

### Assessing configuration compliance with a specific baseline - CIS
```
oscap-podman registry.access.redhat.com/ubi8/ubi-minimal xccdf eval --report report.html --results cis-results.xml  --profile cis /usr/share/xml/scap/ssg/content/ssg-rhel8-ds.xml
```

```
open report.html
```
