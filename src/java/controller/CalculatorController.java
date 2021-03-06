package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.RectangleCalc;
import model.CircleCalc;
import model.TriangleCalc;

/**
 *
 * @author user test
 */
@WebServlet(name = "CalculatorController", urlPatterns = {"/calcmain"})
public class CalculatorController extends HttpServlet {

    private String RECTANGLE_PAGE = "/rectangleCalc.jsp";
    private String CIRCLE_PAGE = "/circleCalc.jsp";
    private String TRIANGLE_PAGE = "/triangleCalc.jsp";

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String calcType = request.getParameter("submit");
        RequestDispatcher view = null;

        if (calcType.equals("Rectangle")) {

            String meas1 = request.getParameter("length");
            String meas2 = request.getParameter("width");
            RectangleCalc ansServ = new RectangleCalc();

            Double msg = ansServ.getArea(meas1, meas2);

            request.setAttribute("calcResult", msg);
            view = request.getRequestDispatcher(RECTANGLE_PAGE);
        } else if (calcType.equals("Circle")) {

            String meas1 = request.getParameter("radius");

            CircleCalc ansServ = new CircleCalc();

            Double msg = ansServ.getArea(meas1);

            request.setAttribute("calcResult", msg);
            view = request.getRequestDispatcher(CIRCLE_PAGE);

        } else if (calcType.equals("Triangle")) {

            String meas1 = request.getParameter("length");
            String meas2 = request.getParameter("width");
            TriangleCalc ansServ = new TriangleCalc();

            Double msg = ansServ.getArea(meas1, meas2);

            request.setAttribute("calcResult", msg);
            view = request.getRequestDispatcher(TRIANGLE_PAGE);
        }

        view.forward(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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
