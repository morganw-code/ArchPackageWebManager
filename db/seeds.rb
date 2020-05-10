response = HTTParty.get("https://www.archlinux.org/packages/search/json/?q=nvidia")
response_json = JSON.parse(response.body)
LIMIT = response_json["results"].count()
for i in LIMIT.times do
    pkgname = response_json["results"][i]["pkgname"]
    pkgbase = response_json["results"][i]["pkgbase"]
    repo = response_json["results"][i]["repo"]
    arch = response_json["results"][i]["arch"]
    pkgver = response_json["results"][i]["pkgver"]
    pkgrel = response_json["results"][i]["pkgrel"]
    epoch = response_json["results"][i]["epoch"]
    pkgdesc = response_json["results"][i]["pkgdesc"]
    url = response_json["results"][i]["url"]
    filename = response_json["results"][i]["filename"]
    compressed_size = response_json["results"][i]["compressed_size"]
    installed_size = response_json["results"][i]["installed_size"]
    build_date = response_json["results"][i]["build_date"]
    last_update = response_json["results"][i]["last_update"]
    flag_date = response_json["results"][i]["flag_date"]
    packager = response_json["results"][i]["packager"]

    Package.create(
        :pkgname => pkgname,
        :pkgbase =>pkgbase,
        :repo => repo,
        :arch => arch,
        :pkgver => pkgver,
        :pkgrel => pkgrel,
        :epoch => epoch,
        :pkgdesc => pkgdesc,
        :url => url,
        :filename => filename,
        :compressed_size => compressed_size,
        :installed_size => installed_size,
        :build_date => build_date,
        :last_update => last_update,
        :flag_date => flag_date,
        :packager => packager
    )
end
