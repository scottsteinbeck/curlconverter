httpService = new http();
httpService.setUrl("http://httpbin.org/patch");
httpService.setMethod("PATCH");
httpService.addParam(type="file" ,name="file1", file="#expandPath("./fixtures/curl_commands/delete.sh")#");
httpService.addParam(type="formfield", name="form1", value="form+data+1");
httpService.addParam(type="formfield", name="form2", value="form_data_2");

result = httpService.send().getPrefix();
writeDump(result);
