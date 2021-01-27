<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class AdminModel extends CI_Model{
    public function SelectOption($table,$Column,$cond){
    
    }
    public function QuerytoHtmlTable($qry,$tablehead){
        //$query=$this->db->select($columns)
        //                ->where($condition)
        //                ->get($table);
        $query = $this->db->query($qry);
        $this->table->set_heading($tablehead);

        $template = array(
            'table_open'            => '<table border="0" cellpadding="4" cellspacing="0" class="table table-striped auto-index">',

            'thead_open'            => '<thead>',
            'thead_close'           => '</thead>',

            'heading_row_start'     => '<tr>',
            'heading_row_end'       => '</tr>',
            'heading_cell_start'    => '<th>',
            'heading_cell_end'      => '</th>',

            'tbody_open'            => '<tbody>',
            'tbody_close'           => '</tbody>',

            'row_start'             => '<tr><td></td>',
            'row_end'               => '</tr>',
            'cell_start'            => '<td>',
            'cell_end'              => '</td>',

            'row_alt_start'         => '<tr><td></td>',/*https://stackoverflow.com/questions/18998526/how-to-get-automatic-serial-number-column-in-the-html-table */
            'row_alt_end'           => '</tr>',
            'cell_alt_start'        => '<td>',
            'cell_alt_end'          => '</td>',

            'table_close'           => '</table>'
        );

        $this->table->set_template($template);
        $result = $this->table->generate($query);
        return $result;

    }
}