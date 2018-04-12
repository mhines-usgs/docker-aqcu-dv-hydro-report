FROM cidasdpdasartip.cr.usgs.gov:8447/aqcu/aqcu-base:latest

ARG CACHE_DATE=not_a_date

ENV repo_name=aqcu-maven-centralized
ENV artifact_id=aqcu-dv-hydro-report
ENV artifact_version=0.0.1-SNAPSHOT

RUN ./pull-from-artifactory.sh ${repo_name} gov.usgs.aqcu ${artifact_id} ${artifact_version} app.jar

#Default ENV Values
ENV serverPort=7502
ENV javaToRServerList=https://reporting-services.nwis.usgs.gov:7500
ENV aqcuReportsWebserviceUrl=http://reporting.nwis.usgs.gov/aqcu/timeseries-ws/
ENV aquariusServiceEndpoint=http://tsqa.nwis.usgs.gov
ENV aquariusServiceUser=apinwisra
ENV AQUARIUS_SERVICE_PASSWORD_PATH=/aquariusPassword.txt
ENV HEALTHY_RESPONSE_CONTAINS='{"status":{"code":"UP","description":""}'
