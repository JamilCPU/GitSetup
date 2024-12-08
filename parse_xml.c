#include <libxml/parser.h>
#include <libxml/tree.h>
#include <stdio.h>
#include <string.h>

int main(int argc, char **argv) {
    if (argc != 2) {
        printf("Usage: %s <xml_file>\n", argv[0]);
        return 1;
    }

    xmlDoc *document = xmlReadFile(argv[1], NULL, 0);
    if (document == NULL) {
        printf("Failed to parse XML file!\n");
        return 1;
    }

    xmlNode *root = xmlDocGetRootElement(document);

    for (xmlNode *node = root->children; node; node = node->next) {
        if (node->type == XML_ELEMENT_NODE && strcmp((const char *)node->name, "book") == 0) {
            for (xmlNode *child = node->children; child; child = child->next) {
                if (child->type == XML_ELEMENT_NODE && strcmp((const char *)child->name, "title") == 0) {
                    printf("Title: %s\n", (const char *)xmlNodeGetContent(child));
                }
            }
        }
    }
    xmlFreeDoc(document);

    return 0;
}
