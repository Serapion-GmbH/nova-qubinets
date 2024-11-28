{{- define "common.labels" -}}
app.kubernetes.io/app: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/component: {{ .serviceName }}
{{- end }}

{{- define "common.selectorLabels" -}}
app.kubernetes.io/app: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/component: {{ .serviceName }}
{{- end }}

{{- define "common.fullname" -}}
{{ .serviceName }}
{{- end }}
