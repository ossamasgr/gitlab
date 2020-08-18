{{/* ######### gitlab-kas related templates */}}

{{/*
Return the gitlab-kas secret
*/}}

{{- define "gitlab.kas.secret" -}}
{{- default (printf "%s-gitlab-kas-secret" .Release.Name) .Values.global.kas.secret | quote -}}
{{- end -}}

{{- define "gitlab.kas.key" -}}
{{- default "kas_shared_secret" .Values.global.kas.key | quote -}}
{{- end -}}
