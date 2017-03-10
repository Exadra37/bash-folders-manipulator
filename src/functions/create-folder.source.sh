#!/bin/bash
# @package exadra37-bash/folders-manipulator
# @link    https://gitlab.com/u/exadra37-bash/folders-manipulator
# @since   2017/03/08
# @license GPL-3.0
# @author  Exadra37(Paulo Silva) <exadra37ingmailpointcom>
#
# Social Links:
# @link    Auhthor:  https://exadra37.com
# @link    Github:   https://gitlab.com/Exadra37
# @link    Github:   https://github.com/Exadra37
# @link    Linkedin: https://uk.linkedin.com/in/exadra37
# @link    Twitter:  https://twitter.com/Exadra37


########################################################################################################################
# Functions
########################################################################################################################

    function Create_Folder()
    {
        local _folder_path="${1}"

        [ -d "$_folder_path" ] || mkdir "${_folder_path}"
    }

    function Create_Folder_Recursively()
    {
        local _folder_path="${1}"

        [ -d "$_folder_path" ] || mkdir -p "${_folder_path}"
    }

    function Create_Folder_If_Does_Not_Exist()
    {
        local _folder_path="${1}"

        Create_Folder_Recursively "${_folder_path}"
    }

    function Create_Folder_To_File()
    {
        local _file_path="${1}"

        local _folder_path=$( dirname "${_file_path}" )

        Create_Folder_Recursively "${_folder_path}"
    }

    function Create_Folder_To_File_If_Does_Not_Exist()
    {
        Create_Folder_To_File "${@}"
    }
