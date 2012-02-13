/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package IAS.Controller;

import IAS.Class.JDSLogger;
import IAS.Model.Subscription.SubscriptionModel;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;

public class subscription extends HttpServlet {

    private static final Logger logger = JDSLogger.getJDSLogger("IAS.Controller.subscription");
    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String oper = request.getParameter("oper");
        String url = null;

        try {
            SubscriptionModel _subscriptionModel = new SubscriptionModel(request);
            if (oper.equalsIgnoreCase("view")) {

                url = "/jsp/subscription/viewsubscription.jsp";

            } else if (oper.equalsIgnoreCase("add")) {

                //save the subscription details sent from the UI
                String xml = _subscriptionModel.addSubscription();
                request.setAttribute("xml", xml);
                url = "/xmlserver";

            } else if (oper.equalsIgnoreCase("edit")) {

                url = "/jsp/subscription/editsubscription.jsp";

            }else if (oper.equalsIgnoreCase("del")) {

                _subscriptionModel.deleteSubscription();

            }else if (oper.equalsIgnoreCase("getsubscription")) {

                //get the subscription details for the subscriber and send it back to the UI as xml
                String xml = _subscriptionModel.getSubscription();
                request.setAttribute("xml", xml);
                url = "/xmlserver";

            }else if (oper.equalsIgnoreCase("detail")){

                String xml = _subscriptionModel.getSubscriptionDetails();
                request.setAttribute("xml", xml);
                url = "/xmlserver";

            }

        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            throw new javax.servlet.ServletException(e);

        } finally {
            RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
            if (rd != null && url != null) {
                rd.forward(request, response);
                //response.sendRedirect(request.getContextPath() + url);
            }
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
