#FROM trustlines/tlbc-monitor:release
FROM trustlines/tlbc-monitor@sha256:9791e5536e7a9658c2fc7b6adcde148591d005d6e0d897fb016a96a76b12b319

ENTRYPOINT ["tlbc-monitor","-c","/config/trustlines-spec.json","-r","/reports","-d","/state","-u","http://trustlines-validator.dappnode:8545"]
