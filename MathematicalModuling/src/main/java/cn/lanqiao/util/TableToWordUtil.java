package cn.lanqiao.util;

import java.awt.Color;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.lowagie.text.Cell;
import com.lowagie.text.Document;
import com.lowagie.text.Element;
import com.lowagie.text.Font;
import com.lowagie.text.PageSize;
import com.lowagie.text.Paragraph;
import com.lowagie.text.Table;
import com.lowagie.text.rtf.RtfWriter2;

import cn.lanqiao.entity.Constants;
import cn.lanqiao.entity.Participant;
import cn.lanqiao.entity.PreReadUploadConfig;
import cn.lanqiao.service.PersonalService;
@Component
public class TableToWordUtil {
	@Autowired
	private PersonalService ps;
    /**
     * 生成word文档
     *
     * @param tables：该数据库下所有表信息
     * @param fileName：生成文件地址
     * @param title:文件内容标题
     * @return: void
     */
    public Document toWord(List<String> fileds,List<Participant> allParticipant, String fileName, String title) {
        Document document = new Document(PageSize.A2);
        try {
            // 创建文件夹
            File dir = new File(Constants.FILE_PATH);
            dir.mkdirs();
            // 创建文件
            File file = new File(fileName);
            if (file.exists() && file.isFile()) {
                file.delete();
            }
            file.createNewFile();

            // 写入文件信息
            RtfWriter2.getInstance(document, new FileOutputStream(fileName));
            document.open();
            Paragraph ph = new Paragraph();
            Font f = new Font();
            Paragraph p = new Paragraph(title, new Font(Font.NORMAL, 24, Font.BOLDITALIC, new Color(0, 0, 0)));
            p.setAlignment(1);
            document.add(p);
            ph.setFont(f);
            String all = "";
            Table table = new Table(fileds.size());
            document.add(new Paragraph(""));
            table.setBorderWidth(1);
            table.setPadding(0);
            table.setSpacing(0);
            //添加表头的元素，并设置表头背景的颜色
            Color chade = new Color(176, 196, 222);
            Cell cell = null;
            for (int i = 0;i < fileds.size();i++) {
            	cell = new Cell(fileds.get(i));
            	cell.setWidth(300);
            	addCell(table, cell, chade);
            }
            table.endHeaders();
            // 表格的主体
            for (int k = 0; k < allParticipant.size(); k++) {
            	Participant participant = allParticipant.get(k);
                addContent(table, cell, String.valueOf(participant.getId()));
                addContent(table, cell, participant.getPname());
                addContent(table, cell, participant.getPstunum());
//                addContent(table, cell, participant.getPgrade());
//                addContent(table, cell, participant.getPdormitoryno());
                addContent(table, cell, participant.getPcampus());
//                addContent(table, cell, participant.getPnativeplace());
                addContent(table, cell, participant.getPidnumber());
//                addContent(table, cell, participant.getPqqno());
//                addContent(table, cell, participant.getPmobilephoneno());
//                addContent(table, cell, participant.getEmail());
//                addContent(table, cell, participant.getPattendeddesc());
                addContent(table, cell, participant.getPacademy());
            }
            Paragraph pheae = new Paragraph(all);
            //写入表说明
            document.add(pheae);
            //生成表格
            document.add(table);
            document.close();
            return document;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 添加表头到表格
     *
     * @param table
     * @param cell
     * @param chade
     */
    private void addCell(Table table, Cell cell, Color chade) {
        cell.setHorizontalAlignment(Element.ALIGN_CENTER);
        cell.setBackgroundColor(chade);
        table.addCell(cell);
    }

    /**
     * 添加内容到表格
     *
     * @param table
     * @param content
     */
    private void addContent(Table table, Cell cell, String content) {
        cell = new Cell(content);
        cell.setHorizontalAlignment(Element.ALIGN_CENTER);
        table.addCell(cell);
    }
}
