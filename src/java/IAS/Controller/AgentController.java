/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package IAS.Controller;

import IAS.Class.JDSLogger;
import IAS.Class.SubscriptionInfo;
import IAS.Model.AgentProc.agentProcModel;
import com.thoughtworks.xstream.XStream;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;

public class AgentController extends JDSController {

    private HttpServletRequest req;
    private HttpServletResponse resp;
    private ServletContext context;
    private String[] params;
    private static final Logger logger = JDSLogger.getJDSLogger(AgentController.class.getName());

    public AgentController(HttpServletRequest req, HttpServletResponse resp, ServletContext context,
            String[] params) {
        this.req = req;
        this.resp = resp;
        this.context = context;
        this.params = params;
    }

    public void actionAgentsubscription() throws IOException, SQLException {
        String xml;
        String inward_number = this.params[0];
        agentProcModel agentmodel = new agentProcModel();
        ArrayList listSubscriptionInfo = agentmodel.getSubscriptionInfo(inward_number);
        XStream xstream = new XStream();
        xstream.alias("results", List.class);
        xstream.alias("row", SubscriptionInfo.class);
        //xstream.alias("subscriberinfo", SubscriberInfo.class);
        //xstream.addImplicitCollection(SubscriptionInfo.class, "results");

        xml = xstream.toXML(listSubscriptionInfo);
        this.resp.getWriter().write(xml);

    }

    public void actionDiscount() throws SQLException, IOException{
        int agent_id = Integer.parseInt(this.params[0]);
        agentProcModel agentmodel = new agentProcModel();
        float discount = agentmodel.getDiscount(agent_id);
        XStream xstream = new XStream();
        xstream.alias("discount", float.class);
        String xml = xstream.toXML(discount);
        this.resp.getWriter().write(xml);
    }

    public void actionSearch() throws SQLException, IOException{
        String search_term = this.req.getParameter("term");
        agentProcModel agentmodel = new agentProcModel();
        List agents = agentmodel.searchAgent(search_term);
        XStream xstream = new XStream();
        xstream.alias("results", List.class);
        xstream.alias("agentName", String.class);
        String xml = xstream.toXML(agents);
        this.resp.getWriter().write(xml);

    }
}