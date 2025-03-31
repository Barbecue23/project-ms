class ReportsController < ApplicationController
  def index
    @reports = Kaminari.paginate_array([
      { name: "final_report.pdf", uploader: "อ.สมชาย", date: "2025-03-01" },
      { name: "design_doc.docx", uploader: "อ.ณัฐณิชา", date: "2025-03-02" },
      { name: "wireframe.png", uploader: "อ.ไกรสร", date: "2025-03-03" }
    ]).page(params[:page]).per(5)

    @projects = Kaminari.paginate_array([
      { title: "ระบบจัดการนักศึกษา", student_name: "น.ส.ปรียา", year: "2566", category: "Web App" },
      { title: "ระบบสแกนใบหน้า", student_name: "นายเจษ", year: "2565", category: "AI" },
      { title: "ระบบคลังเอกสาร", student_name: "นายวีรชัย", year: "2567", category: "ระบบสารสนเทศ" }
    ]).page(params[:page]).per(5)
    
  end
end
