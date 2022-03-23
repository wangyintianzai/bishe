
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*"
         pageEncoding="UTF-8" %>

<%@ page import="com.alibaba.fastjson.*" %>

<%@ page import="com.spring.util.Info" %>


<% if (request.getSession().getAttribute("username") == null || "".equals(request.getSession().getAttribute("username"))) { %>

<script>
    alert("对不起,请您先登陆!");
    location.href = "index.jsp";
</script>
<%return;
} %>


<%

    if (request.getParameter("f") != null) {


        String json1 = request.getParameter("JSON");
        String id = request.getParameter("id");
        JSONArray json = JSON.parseArray(json1);
        JSONObject leixingdefen = JSON.parseObject(request.getParameter("leixingdefen"));

        Map yuyuexiuxni=Query.make("chufangyuyue").where("id",id).find();

        HashMap data = new HashMap();


        data.put("chufangyuyueid", yuyuexiuxni.get("id"));

        data.put("yuyuebianhao", yuyuexiuxni.get("yuyuebianhao"));
        data.put("yuyueren", yuyuexiuxni.get("yuyueren"));
        data.put("xingming", yuyuexiuxni.get("xingming"));
        data.put("wenjuanren", request.getSession().getAttribute("username"));
        data.put("addtime", Info.getDateStr());

        HashMap m = new HashMap();
        for (int i = 0; i < json.size(); i++) {
            JSONObject obj = json.getJSONObject(i);
            obj.putAll(data);
            obj.put("shitiid" , id);   // 错题里面记录的是那个试题的id
            obj.remove("id");

            m.putAll(obj);
            int defen = obj.getIntValue("defen");// Integer.valueOf(String.valueOf(obj.get("defen"))).intValue();
          /*  if (defen != -1) {
                if (defen == 0 && request.getParameter("cuoti")==null) {
                    Query.make("cuoti").add(m);
                }else{
                    if(defen > 0 && request.getParameter("cuoti")!=null){
                        // 删除该错题
                        Query.make("cuoti").where("tikuid" , obj.get("id")).delete();
                    }
                }
            }*/
            Query.make("kaoshijieguo").insert(m);

        }

        HashMap jieguo = new HashMap();
        jieguo.putAll(m);


        Integer total = Integer.valueOf(request.getParameter("zongdefen"));


/*        int d1 =0;
        if(leixingdefen.get("单选题")!=null) {
            d1 = Double.valueOf(String.valueOf(leixingdefen.get("单选题"))).intValue();
        }
        jieguo.put("danxuantidefen",d1 );
        int d2 =0;
        if(leixingdefen.get("多选题")!=null) {
            d2 = Double.valueOf(String.valueOf(leixingdefen.get("多选题"))).intValue();
        }*/

       /* jieguo.put("duoxuantidefen",d2);*/


      /*  jieguo.put("zongdefen", total);
*/
      // Map tik=Query.make("shijuan").where("id",id).find();


      //  jieguo.put("shifoujige", total >= Double.valueOf( String.valueOf( tik.get("jigefenshu") ) ).intValue() ? "及格" : "不及格");
//        jieguo.put("kaoshishichang", Request.get("time"));
       /// jieguo.put("suoshuxueke",tik.get("suoshuxueke") );


       /* long insertId = Query.make("kaoshidefen").insert(jieguo);*/
        DB.execute("update chufangyuyue set zongdefen='"+total+"' where id='"+id+"'");
        out.clear();
        out.clearBuffer();
        out.println("{code:0}");
        out.close();
    } else {
        out.println("{code:1,msg:\"信息提交失败\"}");
        out.close();
    }
%>