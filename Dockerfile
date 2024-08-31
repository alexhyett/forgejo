FROM codeberg.org/forgejo/forgejo:8

EXPOSE 22 3000

RUN /usr/local/bin/environment-to-ini

ENTRYPOINT ["/usr/bin/entrypoint"]
CMD ["/bin/s6-svscan", "/etc/s6"]