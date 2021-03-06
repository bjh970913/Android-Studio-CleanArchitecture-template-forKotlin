<?xml version="1.0"?>
<recipe>
    <merge from="root/AndroidManifest.xml.ftl"
                  to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <instantiate from="root/src/app_package/SimpleContract.kt.ftl"
                  to="${escapeXmlAttribute(srcOutKotlin)}/${contractName}.kt" />
    <instantiate from="root/src/app_package/SimpleModule.kt.ftl"
                  to="${escapeXmlAttribute(srcOutKotlin)}/${moduleName}.kt" />
    <instantiate from="root/src/app_package/SimplePresenter.kt.ftl"
                  to="${escapeXmlAttribute(srcOutKotlin)}/${presenterName}.kt" />
    <instantiate from="root/src/app_package/SimpleService.kt.ftl"
                  to="${escapeXmlAttribute(srcOutKotlin)}/${serviceName}.kt" />
    <open file="${escapeXmlAttribute(srcOutKotlin)}/${moduleName}.kt" />
    <open file="${escapeXmlAttribute(srcOutKotlin)}/${contractName}.kt" />
    <open file="${escapeXmlAttribute(srcOutKotlin)}/${presenterName}.kt" />
    <open file="${escapeXmlAttribute(srcOutKotlin)}/${serviceName}.kt" />
</recipe>
